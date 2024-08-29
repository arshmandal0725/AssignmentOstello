import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello/constant.dart';
import 'package:ostello/providers/homescreentab_providers/chart_duration_provider.dart';
import 'package:ostello/widgets/charts/one_data/one_days_chart.dart';
import 'package:ostello/widgets/charts/one_data/one_month_chart.dart';
import 'package:ostello/widgets/charts/one_data/one_week_chart.dart';
import 'package:ostello/widgets/charts/one_data/one_year_chart.dart';

class RevenueTabWidget extends ConsumerStatefulWidget {
  const RevenueTabWidget({super.key});

  @override
  ConsumerState<RevenueTabWidget> createState() => _ViewTabWidgetState();
}

class _ViewTabWidgetState extends ConsumerState<RevenueTabWidget> {
  final List<FlSpot> line1Data = const [
    FlSpot(0, 15000),
    FlSpot(1, 25000),
    FlSpot(2, 40000),
    FlSpot(3, 35000),
    FlSpot(4, 55000),
  ];

  final List<double> weeklyData = [
    40000,
    50000,
    90000,
    50000,
    60000,
    45000,
    55000
  ];
  final List<double> yearlyData = [
    15000,
    22000,
    28000,
    19000,
    25000,
  ];

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
                      "Total Number of Students Enrolled",
                      style: avenirNextLTProMedium(14 * textScale, lightGrey1),
                    ),
                    Text(
                      "1000 Students",
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
          SizedBox(
            height: screenHeight * 0.03,
          ),
          SizedBox(
            height: screenHeight * 0.35,
            child: (currentIndex == 0)
                ? DaysChart(line1Data: line1Data)
                : (currentIndex == 1)
                    ? WeekChart(weeklyData: weeklyData)
                    : (currentIndex == 2)
                        ? MonthChart(line1Data: line1Data)
                        : YearChart(yearlyData: yearlyData),
          ),
        ],
      ),
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
