import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class DoubleDhamakaOfferWidget extends StatelessWidget {
  const DoubleDhamakaOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: screenSize.height * 0.25, // Responsive height
      color: white,
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1, color: lightGrey3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Double Dhamaka Offer!",
                  style: avenirLTProHigh(
                      22 * textScaleFactor, const Color(0xFF282828)),
                ),
                Text(
                  "Accept payment on Google Pay for Business QR to win weekly cashbacks!",
                  style: avenirLTProHigh(
                      18 * textScaleFactor, const Color(0xFFADADAD)),
                ),
                Text(
                  "Check Out",
                  style: avenirLTProHigh(18 * textScaleFactor, vibrantPurple),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: screenSize.height * 0.15, // Responsive height
              width: screenSize.width * 0.4, // Responsive width
              child: Image.asset(
                "assets/images/image/7760 1.png",
                fit: BoxFit.cover, // Adjust image to cover the container
              ),
            ),
          ),
        ],
      ),
    );
  }
}
