import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello/constant.dart';
import 'package:ostello/providers/homescreentab_providers/hometabs_provider.dart';
import 'package:ostello/screens/rating_screen.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/cashback_container_widget.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/double_dhamaka_offer_widget.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/home_tab.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/recent_rating_card.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/stats_container.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/tabs_of_hometabs/enrolled_tab.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/tabs_of_hometabs/followers_tab.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/tabs_of_hometabs/revenue_tab.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/tabs_of_hometabs/sec_view_tab.dart';

class HomeScreenTab extends ConsumerStatefulWidget {
  const HomeScreenTab({super.key});

  @override
  ConsumerState<HomeScreenTab> createState() => _HomeScreenTabState();
}

class _HomeScreenTabState extends ConsumerState<HomeScreenTab> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    final currentIndexofhometab = ref.watch(hometabProvider);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: white,
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenSize.height * 0.02),
                Text(
                  "Dashboard",
                  style: avenirLTProHigh(
                    screenSize.width * 0.045 * textScaleFactor,
                    Colors.black,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StatsContainer(
                      statsTitle: 'Total Rating',
                      statsValue: 0,
                      isRating: true,
                    ),
                    StatsContainer(
                      statsTitle: 'Revenue',
                      statsValue: 0,
                      isRating: false,
                    ),
                    StatsContainer(
                      statsTitle: 'Followers',
                      statsValue: 0,
                      isRating: false,
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.02),
                const HomeTab(),
                (currentIndexofhometab == 0)
                    ? const SecViewTabWidget()
                    : (currentIndexofhometab == 1)
                        ? const EnrolledTabWidget()
                        : (currentIndexofhometab == 2)
                            ? const RevenueTabWidget()
                            : const FollowersTabWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Recent Rating",
                      style: avenirLTProHigh(14 * textScaleFactor, darkGrey2),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const AllRatingsScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0.5,
                              color: vibrantPurple,
                            ),
                          ),
                        ),
                        child: Text(
                          "View all",
                          style: avenirNextLTProHigh(
                              12 * textScaleFactor, vibrantPurple),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.02),
                const RecentRatingCard(),
                SizedBox(height: screenSize.height * 0.03),
              ],
            ),
          ),
          const CashbackContainerWidget(),
          SizedBox(height: screenSize.height * 0.03),
          const DoubleDhamakaOfferWidget(),
          SizedBox(height: screenSize.height * 0.05),
        ],
      ),
    );
  }
}
