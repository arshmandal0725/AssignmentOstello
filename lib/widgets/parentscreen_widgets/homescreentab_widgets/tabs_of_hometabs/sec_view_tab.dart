import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello/constant.dart';
import 'package:ostello/providers/homescreentab_providers/chart_duration_provider.dart';
import 'package:ostello/widgets/charts/two_data/two_days_chart.dart';
import 'package:ostello/widgets/charts/two_data/two_month_chart.dart';
import 'package:ostello/widgets/charts/two_data/two_weeks_chart.dart';
import 'package:ostello/widgets/charts/two_data/two_year_chart.dart';

class SecViewTabWidget extends ConsumerStatefulWidget {
  const SecViewTabWidget({super.key});

  @override
  ConsumerState<SecViewTabWidget> createState() => _ViewTabWidgetState();
}

class _ViewTabWidgetState extends ConsumerState<SecViewTabWidget> {
  final List<FlSpot> line1Data = const [
    FlSpot(0, 15000),
    FlSpot(1, 25000),
    FlSpot(2, 40000),
    FlSpot(3, 35000),
    FlSpot(4, 55000),
  ];

  final List<FlSpot> line2Data = const [
    FlSpot(0, 10000),
    FlSpot(1, 20000),
    FlSpot(2, 30000),
    FlSpot(3, 25000),
    FlSpot(4, 45000),
  ];
  final List<double> weeklyData1 = [
    12000,
    15000,
    18000,
    22000,
    25000,
    19000,
    21000
  ];
  final List<double> weeklyData2 = [
    10000,
    14000,
    17000,
    21000,
    24000,
    18000,
    20000
  ];
  final List<double> yearlyData1 = [15000, 30000, 25000, 40000, 35000];
  final List<double> yearlyData2 = [18000, 25000, 22000, 38000, 33000];
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double textScale = MediaQuery.of(context).textScaleFactor;
    final currentIndex = ref.watch(charttabProvider);
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.04),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      "Total Number of Views",
                      style: avenirNextLTProMedium(14 * textScale, lightGrey1),
                    ),
                    Text(
                      "150K Views",
                      style: avenirLTProHigh(24 * textScale, vibrantPurple),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Center(
            child: SizedBox(
              height: screenHeight * 0.03,
              width: screenWidth * 0.8,
              child: Row(
                children: [
                  ChartDurationContainer(
                    title: 'Days',
                    isSelected: (currentIndex == 0),
                    index: 0,
                  ),
                  ChartDurationContainer(
                    title: 'Weeks',
                    isSelected: (currentIndex == 1),
                    index: 1,
                  ),
                  ChartDurationContainer(
                    title: 'Month',
                    isSelected: (currentIndex == 2),
                    index: 2,
                  ),
                  ChartDurationContainer(
                    title: 'Year',
                    isSelected: (currentIndex == 3),
                    index: 3,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const DataPresenterContainer(
                  color: Colors.red,
                  title: "Paid Students",
                ),
                SizedBox(width: screenWidth * 0.04),
                const DataPresenterContainer(
                  color: Colors.purple,
                  title: "Demo Students",
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          SizedBox(
              height: screenHeight * 0.35,
              child: (currentIndex == 0)
                  ? TwoDaysChart(
                      line1Data: line1Data,
                      line2Data: line2Data,
                    )
                  : (currentIndex == 1)
                      ? TwoWeeksChart(
                          weeklyData1: weeklyData1,
                          weeklyData2: weeklyData2,
                        )
                      : (currentIndex == 2)
                          ? TwoMonthChart(
                              line1Data: line1Data,
                              line2Data: line2Data,
                            )
                          : TwoYearChart(
                              yearlyData1: yearlyData1,
                              yearlyData2: yearlyData2)),
        ],
      ),
    );
  }
}

class DataPresenterContainer extends StatelessWidget {
  const DataPresenterContainer({
    super.key,
    required this.color,
    required this.title,
  });

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    final double textScale = MediaQuery.of(context).textScaleFactor;

    return Row(
      children: [
        Container(
          height: 15 * textScale,
          width: 15 * textScale,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22 * textScale),
            color: color,
          ),
        ),
        SizedBox(width: 8 * textScale),
        Text(
          title,
          style: TextStyle(fontSize: 16 * textScale),
        ),
      ],
    );
  }
}

class ChartDurationContainer extends ConsumerStatefulWidget {
  const ChartDurationContainer(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.index});
  final String title;
  final bool isSelected;
  final int index;

  @override
  ConsumerState<ChartDurationContainer> createState() =>
      _ChartDurationContainerState();
}

class _ChartDurationContainerState
    extends ConsumerState<ChartDurationContainer> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        ref.read(charttabProvider.notifier).changeIndex(widget.index);
      },
      child: Container(
        height: double.infinity,
        width: screenWidth * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (widget.isSelected) ? vibrantPurple : white),
        child: Center(
          child: Text(
            widget.title,
            style: avenirNextLTProHigh(
                15, (widget.isSelected) ? white : mediumGrey),
          ),
        ),
      ),
    );
  }
}
