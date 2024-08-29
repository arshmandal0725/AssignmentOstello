import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class TwoYearChart extends StatelessWidget {
  const TwoYearChart({
    super.key,
    required this.yearlyData1,
    required this.yearlyData2,
  });

  final List<double> yearlyData1;
  final List<double> yearlyData2;

  @override
  Widget build(BuildContext context) {
    double maxData = [
      ...yearlyData1,
      ...yearlyData2,
    ].reduce((a, b) => a > b ? a : b);
    double adjustedMaxY = (maxData / 20000).ceil() * 20000;

    return LayoutBuilder(
      builder: (context, constraints) {
        double barWidth = constraints.maxWidth * 0.03; // Adjust bar width

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
                      const defaultStyle = TextStyle(
                        color: Color(0xFFB0B0B0),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      );
                      final selectedStyle = defaultStyle.copyWith(color: Colors.black);
                      switch (value.toInt()) {
                        case 0:
                          return Text('${DateTime.now().year - 4}', style: defaultStyle);
                        case 1:
                          return Text('${DateTime.now().year - 3}', style: defaultStyle);
                        case 2:
                          return Text('${DateTime.now().year - 2}', style: defaultStyle);
                        case 3:
                          return Text('${DateTime.now().year - 1}', style: defaultStyle);
                        case 4:
                          return Text('${DateTime.now().year}', style: selectedStyle);
                        default:
                          return const Text('');
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
                        style: avenirNextLTProHigh(12, const Color(0xFFB0B0B0)),
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
              barGroups: List.generate(yearlyData1.length, (i) {
                bool isCurrentYear = i == yearlyData1.length - 1; // Current year is the last one in the list
                return BarChartGroupData(
                  x: i,
                  barRods: [
                    BarChartRodData(
                      toY: yearlyData1[i],
                      color: isCurrentYear
                          ? Colors.purple
                          : Colors.grey.withOpacity(0.5),
                      width: barWidth,
                      borderRadius: BorderRadius.circular(4),
                      backDrawRodData: BackgroundBarChartRodData(
                        show: false,
                      ),
                    ),
                    BarChartRodData(
                      toY: yearlyData2[i],
                      color: isCurrentYear
                          ? Colors.red
                          : Colors.grey.withOpacity(0.5),
                      width: barWidth,
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
