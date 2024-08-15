import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      width: MediaQuery.of(context).size.width * 9, // 90% of the screen width
      height: 500, // Set the height to 300 pixels
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(164, 233, 226, 226), // Hex color #806cd0
            Color.fromARGB(174, 255, 255, 255), // Hex color #806cd0
          ],
          begin: Alignment.center,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 150,
          ),
          // victal card
          Text(
            "Vital Card",
            style: GoogleFonts.aBeeZee(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(96, 0, 0, 0)),
          ),
          const SizedBox(
            height: 10,
          ),

          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(33),
                    topRight: Radius.circular(33),
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
              Container(
                padding: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * .9,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(120, 158, 158, 158),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "&5746.66",
                      style: GoogleFonts.aBeeZee(fontSize: 15),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Available",
                      style: GoogleFonts.aBeeZee(fontSize: 15),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
