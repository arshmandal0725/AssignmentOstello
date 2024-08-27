import 'package:flutter/material.dart';

class StudentInstituteCard extends StatelessWidget {
  const StudentInstituteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFFFBFBFB),
            border: const Border(
                bottom: BorderSide(width: 1, color: Color(0xFFFBFBFB)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: Image.asset("assets/images/image/Ellipse 1244.png"),
                ),
                Positioned(
                  bottom: -5,
                  right: -5,
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset(
                        "assets/images/tools/Untitled design-4 1.png"),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Institute Name",
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: Color(0xFF525251)),
                ),
                Text(
                  "Joined Jan 2023",
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF525251)),
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 24,
              width: 24,
              child: Image.asset("assets/images/tools/Edit.png"),
            )
          ],
        ),
      ),
    );
  }
}
