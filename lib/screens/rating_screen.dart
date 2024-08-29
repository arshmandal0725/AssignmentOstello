import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/recent_rating_card.dart';
import 'package:ostello/widgets/rating_screen_widgets.dart/filter_container.dart';
import 'package:ostello/widgets/rating_screen_widgets.dart/rating_screen_appbar.dart';

class AllRatingsScreen extends StatefulWidget {
  const AllRatingsScreen({super.key});

  @override
  State<AllRatingsScreen> createState() => _AllRatingsScreenState();
}

class _AllRatingsScreenState extends State<AllRatingsScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.07),
        child: const RatingScreenAppbar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Container(
              decoration: BoxDecoration(
                color: lightShadePurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03,
                  vertical: screenHeight * 0.005),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.025,
                    width: screenWidth * 0.07,
                    child: Image.asset("assets/images/tools/search-normal.png"),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.08,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(width: screenWidth * 0.04),
                const FilterContainer(),
                Container(
                  width: screenWidth * 0.02,
                  height: screenHeight * 0.035,
                  decoration: const BoxDecoration(
                      border: Border(
                          right:
                              BorderSide(width: 1, color: Color(0xFFCBCACB)))),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (ctx, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RecentRatingCard(),
                      SizedBox(
                        height: screenHeight * 0.02,
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
