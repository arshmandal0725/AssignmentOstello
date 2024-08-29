import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeekChart extends StatelessWidget {
  const WeekChart({super.key, required this.weeklyData});

  final List<double> weeklyData;

  @override
  Widget build(BuildContext context) {
    double maxData = weeklyData.reduce((a, b) => a > b ? a : b);
    double adjustedMaxY = (maxData / 20000).ceil() * 20000;

    return LayoutBuilder(
      builder: (context, constraints) {
        double maxBarWidth = constraints.maxWidth * 0.04; // Make bars thinner

        // Define the custom text style
        final textStyle = TextStyle(
          fontFamily: 'AvenirNextLTProHigh',
          fontSize: 14,
          color: const Color(0xFFB0B0B0), // Color code for #B0B0B0
        );

        final selectedTextStyle = textStyle.copyWith(color: Colors.black);

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              maxY: adjustedMaxY,
              barTouchData: BarTouchData(enabled: true),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      switch (value.toInt()) {
                        case 0:
                          return Text('Sun', style: textStyle);
                        case 1:
                          return Text('Mon', style: textStyle);
                        case 2:
                          return Text('Tue',
                              style: selectedTextStyle); // Current day
                        case 3:
                          return Text('Wed', style: textStyle);
                        case 4:
                          return Text('Thu', style: textStyle);
                        case 5:
                          return Text('Fri', style: textStyle);
                        case 6:
                          return Text('Sat', style: textStyle);
                        default:
                          return const Text('', style: TextStyle());
                      }
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return Text(
                        '${(value / 1000).toInt()}K',
                        style: textStyle,
                      );
                    },
                    reservedSize: 40,
                  ),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              gridData: FlGridData(
                show: true,
                drawHorizontalLine: true,
                drawVerticalLine: true,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: Colors.grey.withOpacity(0.3),
                    strokeWidth: 1,
                  );
                },
                getDrawingVerticalLine: (value) {
                  return FlLine(
                    color: Colors.grey.withOpacity(0.3),
                    strokeWidth: 1,
                  );
                },
              ),
              borderData: FlBorderData(
                show: false,
              ),
              barGroups: List.generate(weeklyData.length, (i) {
                bool isSelected = i == 2; // Example: Current day index
                return BarChartGroupData(
                  x: i,
                  barRods: [
                    BarChartRodData(
                      toY: weeklyData[i],
                      color:
                          isSelected ? Colors.purple : const Color(0xFFC6C6C6),
                      width: maxBarWidth,
                      borderRadius: BorderRadius.circular(4),
                      backDrawRodData: BackgroundBarChartRodData(
                        show: false,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
