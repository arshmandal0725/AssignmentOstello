import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class StatsContainer extends StatefulWidget {
  const StatsContainer({
    super.key,
    required this.statsTitle,
    required this.statsValue,
    required this.isRating,
  });

  final String statsTitle;
  final double statsValue;
  final bool isRating;

  @override
  State<StatsContainer> createState() => _StatsContainerState();
}

class _StatsContainerState extends State<StatsContainer> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: screenSize.height * 0.01,
        horizontal: screenSize.width * 0.03,
      ),
      height: screenSize.height * 0.08,
      width: screenSize.width * 0.28,
      decoration: BoxDecoration(
        color: lightShadePurple,
        borderRadius: BorderRadius.circular(screenSize.width * 0.03),
        border: Border.all(width: 1, color: lavendermist),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.statsTitle,
            style: avenirLTProHigh(
              screenSize.width * 0.03,
              darkGrey2,
            ),
          ),
          Row(
            children: [
              Text(
                "${widget.statsValue}",
                style: avenirLTProHigh(
                  screenSize.width * 0.04,
                  vibrantPurple,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
