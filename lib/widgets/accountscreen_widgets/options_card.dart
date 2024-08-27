import 'package:flutter/material.dart';
import 'package:ostello/screens/refer_and_earn_screen.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.havingLowerBorder,
  });

  final String title;
  final String subTitle;
  final String image;
  final bool havingLowerBorder;

  @override
  Widget build(BuildContext context) {
    void onTap() {
  Navigator.push(context,MaterialPageRoute(builder: (_)=>const ReferAndEarnScreen()));
}

    return InkWell(
      onTap: onTap,
      splashColor: Colors.grey.withOpacity(0.2), // Splash color for feedback
      highlightColor: Colors.transparent, // No highlight color on tap
      child: Container(
        margin: (havingLowerBorder)
            ? const EdgeInsets.symmetric(horizontal: 12)
            : const EdgeInsets.symmetric(horizontal: 0),
        padding: (havingLowerBorder)
            ? const EdgeInsets.symmetric(vertical: 16, horizontal: 0)
            : const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          border: (havingLowerBorder)
              ? const Border(
                  bottom: BorderSide(width: 1, color: Color(0xFFEEEEEE)))
              : const Border(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color(0xFFFAF6FF)),
              child: Center(
                child: SizedBox(
                  width: 19,
                  height: 17,
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Color(0xFF525251)),
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF525251)),
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 16,
              width: 16,
              child: Image.asset("assets/images/tools/arrow-right.png"),
            )
          ],
        ),
      ),
    );
  }
}

