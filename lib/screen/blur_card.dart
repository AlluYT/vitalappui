import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final CarouselSliderController carouselController =
      CarouselSliderController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: List.generate(3, (index) {
            return Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(123, 235, 224, 224),
                  Color.fromARGB(123, 235, 224, 224),
                ]),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(
                            color: Color.fromARGB(190, 255, 255, 255),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .1 + 30,
                      ),
                      const SizedBox(
                        child: Text(
                          "52",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 202, 10, 193),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "&32",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            const Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  ".9",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width * .2,
                                  decoration:
                                      const BoxDecoration(color: Colors.black),
                                )
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              "Rewards earned",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 202, 10, 193)),
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
          carouselController: carouselController,
          options: CarouselOptions(
            height: 220,
            scrollPhysics: const BouncingScrollPhysics(),
            // autoPlay: true,
            // aspectRatio: 1.5,
            viewportFraction: 1,
            onPageChanged: (index, reason) => setState(() {
              currentIndex = index;
            }),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return GestureDetector(
              onTap: () => carouselController.animateToPage(index),
              child: Container(
                width: currentIndex == index ? 17 : 7,
                height: 10.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 3.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == index
                      ? const Color.fromARGB(
                          255, 15, 35, 218) // Blue for selected
                      : const Color.fromARGB(
                          255, 216, 90, 90), // Black for unselected
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
