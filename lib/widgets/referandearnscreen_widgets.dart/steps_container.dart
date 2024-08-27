import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class StepsToEarnContainer extends StatelessWidget {
  const StepsToEarnContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: mq.height * 0.3,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFFFF9F9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "*Start Reffering Today*",
              style: TextStyle(
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: Color(0xFFF14747)),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "*Limited Time Offer - Don't Miss Out*",
              style: TextStyle(
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                  color: Color(0xFF696969)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "*Steps To Earn:*",
              style: TextStyle(
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w800,
                  fontSize: 17,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              content2[0],
              style: const TextStyle(
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFF696969)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              content2[1],
              style: const TextStyle(
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFF696969)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              content2[2],
              style: const TextStyle(
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFF696969)),
            ),
            const Spacer(),
            const Text(
              "*Terms and conditions apply.*",
              style: TextStyle(
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
