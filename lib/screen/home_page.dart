import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vitalappui/screen/blur_card.dart';
import 'package:vitalappui/screen/second_section.dart';
import 'package:vitalappui/screen/tabbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(
            174, 255, 255, 255), // Slightly transparent white
        toolbarHeight: 2.0, // Very thin app bar, increase if needed
        backgroundColor: const Color(0xFF806CD0), // Hex color #806CD0
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  // firstsection
                  Container(
                    padding: const EdgeInsets.all(14),
                    width: MediaQuery.of(context).size.width *
                        9, // 90% of the screen width
                    height: 300, // Set the height to 300 pixels
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(
                              255, 138, 120, 209), // Hex color #806cd0
                          Color.fromARGB(255, 150, 143, 175),
                        ],
                        begin: Alignment.center,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              child: const Text(
                                "Get &15",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "VITAL",
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Container(
                              width: 70.0,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(53),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Quick actions",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(139, 255, 255, 255)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const SegmentedButtonScroll(),
                      ],
                    ),
                  ),
                  // secondSection
                  const SecondSection()
                ],
              ),
              const Positioned(
                top: 185,
                left: 0,
                right: 0,
                child: SliderScreen(),
              ),
              Positioned(
                top: 355,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 50, // Optionally set the height
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(
                            0xFF806CD0), // Customize button color if needed
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Earn more cash",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
