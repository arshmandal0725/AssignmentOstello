import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';
import 'package:ostello/widgets/charts/two_data/two_days_chart.dart';

class ViewTabWidget extends StatefulWidget {
  const ViewTabWidget({super.key});

  @override
  State<ViewTabWidget> createState() => _ViewTabWidgetState();
}

class _ViewTabWidgetState extends State<ViewTabWidget> {
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Number of Views",
                      style: avenirNextLTProMedium(14, lightGrey1),
                    ),
                    Text(
                      "150K Views",
                      style: avenirLTProHigh(24, vibrantPurple),
                    ),
                  ],
                ),
              ),
              const DateContainer(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height:
                MediaQuery.of(context).size.height * 0.35, // Responsive height
            child: TwoDaysChart(line1Data: line1Data, line2Data: line2Data),
          ),
          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                DataPresenterContainer(
                  color: Colors.red,
                  title: "Paid Students",
                ),
                SizedBox(width: 16),
                DataPresenterContainer(
                  color: Colors.purple,
                  title: "Demo Students",
                ),
              ],
            ),
          ),
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
    return Row(
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: color,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style:
              TextStyle(fontSize: MediaQuery.of(context).textScaleFactor * 16),
        ),
      ],
    );
  }
}

class DateContainer extends StatelessWidget {
  const DateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: MediaQuery.of(context).size.height * 0.04, // Responsive height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: lightpurple,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Jun 8",
            style: TextStyle(fontSize: 14),
          ),
          Image.asset(
            "assets/images/tools/arrow-down.png",
            height: 16,
          ),
        ],
      ),
    );
  }
}
