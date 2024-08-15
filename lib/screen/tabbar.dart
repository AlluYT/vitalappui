import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SegmentedButtonScroll extends StatefulWidget {
  const SegmentedButtonScroll({super.key});

  @override
  State<SegmentedButtonScroll> createState() => _SegmentedButtonScrollState();
}

class _SegmentedButtonScrollState extends State<SegmentedButtonScroll> {
  int _selectedIndex = 0;
  final List<String> buttonsName = [
    "Pay Card",
    "Invite Friends",
    "Cash",
    "Pay Card",
    "Invite Friends",
    "Cash",
    "Bank"
        "Bank"
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: buttonsName.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: _selectedIndex == index
                    ? const Color.fromARGB(255, 5, 43, 148)
                    : const Color.fromARGB(150, 5, 43, 148),
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              child: Text(buttonsName[index],
                  style: GoogleFonts.aBeeZee(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          );
        },
      ),
    );
  }
}
