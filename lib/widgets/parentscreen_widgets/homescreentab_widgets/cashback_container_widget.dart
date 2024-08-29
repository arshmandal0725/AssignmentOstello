import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class CashbackContainerWidget extends StatelessWidget {
  const CashbackContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: screenSize.height * 0.02,
        horizontal: screenSize.width * 0.06,
      ),
      height: screenSize.height * 0.2, // Responsive height
      width: double.infinity,
      color: const Color(0xFFDDFFDE),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Refer & Earn',
                style:
                    avenirNextLTProMedium(16 * textScaleFactor, Colors.black),
              ),
              Text(
                'Cashback & Rewards',
                style: avenirNextLTProHigh(20 * textScaleFactor, Colors.black),
              ),
              SizedBox(
                width: screenSize.width * 0.5,
                child: Text(
                  'Invite Students/Institutes & earn Rewards',
                  style:
                      avenirNextLTProMedium(11 * textScaleFactor, Colors.black),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: screenSize.width * 0.3,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Invite',
                    style: avenirNextLTProHigh(14 * textScaleFactor, white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height * 0.18, // Responsive height
            width: screenSize.width * 0.35, // Responsive width
            child: Image.asset(
              "assets/images/image/Refer a friend-pana 1.png",
              fit: BoxFit.cover, // Adjust image to cover the container
            ),
          ),
        ],
      ),
    );
  }
}
