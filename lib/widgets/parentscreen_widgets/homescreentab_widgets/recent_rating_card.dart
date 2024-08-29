import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class RecentRatingCard extends StatefulWidget {
  const RecentRatingCard({super.key});

  @override
  State<RecentRatingCard> createState() => _RecentRatingCardState();
}

class _RecentRatingCardState extends State<RecentRatingCard> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double imageSize =
        screenSize.width * 0.1; // Responsive size for image
    final double borderRadius =
        screenSize.width * 0.03; // Responsive border radius
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: screenSize.height * 0.25, // Responsive height
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: screenSize.height * 0.02,
        horizontal: screenSize.width * 0.04,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: darkGrey1.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: imageSize,
                height: imageSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(imageSize / 2),
                  color: lightGrey,
                ),
              ),
              SizedBox(width: screenSize.width * 0.05),
              Expanded(
                child: Text(
                  "Ishan Bedi",
                  style: avenirLTProHigh(16 * textScaleFactor, darkGrey1),
                ),
              ),
              Text(
                "4.5",
                style: avenirLTProHigh(16 * textScaleFactor, darkGrey1),
              ),
            ],
          ),
          SizedBox(height: screenSize.height * 0.02),
          Text(
            content3,
            style: avenirLTProHigh(12 * textScaleFactor, darkGrey3),
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.04,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: lightshadePurple2,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter details",
                      labelStyle: avenirNextLTProMedium(
                          16 * textScaleFactor, lightGrey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    const AssetImage(
                      "assets/images/tools/paperclip-2.png",
                    ),
                    color: vibrantPurple,
                  ),
                ),
                Container(
                  height: 20,
                  width: 1, // Changed to 1 to show the line
                  color: lightGrey,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Reply",
                    style: avenirNextLTProMedium(
                        16 * textScaleFactor, vibrantPurple),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
