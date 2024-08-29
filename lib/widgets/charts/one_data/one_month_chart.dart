import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class MonthChart extends StatelessWidget {
  final List<FlSpot> line1Data;

  const MonthChart({
    super.key,
    required this.line1Data,
  });

  @override
  Widget build(BuildContext context) {
    final maxYValue =
        (line1Data.map((spot) => spot.y).reduce((a, b) => a > b ? a : b) /
                    10000)
                .ceil() *
            10000;

    final interval = maxYValue / 4;

    return AspectRatio(
      aspectRatio: 1.7,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            drawHorizontalLine: true,
            verticalInterval: 1,
            horizontalInterval: interval,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.grey.withOpacity(0.5),
                strokeWidth: 1,
              );
            },
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: Colors.grey.withOpacity(0.5),
                strokeWidth: 1,
              );
            },
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: interval,
                getTitlesWidget: (value, meta) {
                  if (value == 0) {
                    return Text(
                      '0',
                      style: avenirLTProHigh(12, const Color(0xFFB0B0B0)),
                    );
                  }
                  return Text(
                    '${(value / 1000).toInt()}K',
                    style: avenirLTProHigh(12, const Color(0xFFB0B0B0)),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  final months = [
                    'Jan',
                    'Feb',
                    'Mar',
                    'Apr',
                    'May',
                    'Jun',
                    'Jul',
                    'Aug',
                    'Sep',
                    'Oct',
                    'Nov',
                    'Dec'
                  ];
                  // Show labels only for every third month
                  if (value.toInt() % 3 == 0 && value.toInt() < 12) {
                    return Text(
                      months[value.toInt()],
                      style: avenirLTProHigh(12, const Color(0xFFB0B0B0)),
                    );
                  }
                  return const SizedBox.shrink(); // Return empty widget for non-labeled months
                },
              ),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: const Border(
              left: BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
              bottom: BorderSide(
                color: Colors.black,
                width: 1,
              ),
              top: BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
              right: BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
            ),
          ),
          minX: 0,
          maxX: 11, // Set maxX to 11 to cover 12 months (0 to 11)
          minY: 0,
          maxY: maxYValue.toDouble(),
          lineBarsData: [
            LineChartBarData(
              spots: line1Data,
              isCurved: true,
              color: Colors.purple,
              barWidth: 4,
              belowBarData: BarAreaData(show: false),
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  final isLastPoint = index == line1Data.length - 1;
                  return FlDotCirclePainter(
                    radius: isLastPoint ? 4 : 0,
                    color: Colors.purple,
                    strokeWidth: 0,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
