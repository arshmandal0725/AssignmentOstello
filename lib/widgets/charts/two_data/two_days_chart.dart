import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting

class TwoDaysChart extends StatelessWidget {
  final List<FlSpot> line1Data;
  final List<FlSpot> line2Data; // Add parameter for second dataset

  const TwoDaysChart({
    super.key,
    required this.line1Data,
    required this.line2Data, // Initialize the second dataset
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final pastTime = now.subtract(const Duration(hours: 10));

    // Calculate the maximum Y value for the chart
    final maxYValue =
        ([
          ...line1Data.map((spot) => spot.y),
          ...line2Data.map((spot) => spot.y),
        ].reduce((a, b) => a > b ? a : b) /
                    10000)
                .ceil() *
            10000;

    final interval = maxYValue / 4;

    // Define the custom text style
    const textStyle = TextStyle(
      fontFamily: 'AvenirNextLTProHigh',
      fontSize: 12,
      color: Color(0xFFB0B0B0), // Color code for #B0B0B0
    );

    // Function to get the time label based on x-axis value
    String getTimeLabel(double value) {
      final currentTime = pastTime.add(Duration(hours: value.toInt() * 2));
      final formatter = DateFormat('h a'); // Format for hour and AM/PM
      return formatter.format(currentTime);
    }

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
                    return const Text(
                      '0',
                      style: textStyle,
                    );
                  }
                  return Text(
                    '${(value / 1000).toInt()}K',
                    style: textStyle,
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
                  // Convert x-axis value to time in 12-hour format with AM/PM
                  return Text(
                    getTimeLabel(value),
                    style: textStyle,
                  );
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
          maxX: 5, // Adjust according to your needs
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
            LineChartBarData(
              spots: line2Data,
              isCurved: true,
              color: const Color(0xFFF14747), // Color code for #F14747
              barWidth: 4,
              belowBarData: BarAreaData(show: false),
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  final isLastPoint = index == line2Data.length - 1;
                  return FlDotCirclePainter(
                    radius: isLastPoint ? 4 : 0,
                    color: const Color(0xFFF14747), // Color code for #F14747
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
