import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AttendanceArcChart extends StatelessWidget {
  final Map<String, int> data;

  AttendanceArcChart({required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      child: PieChart(
        PieChartData(
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          startDegreeOffset: 180,
          sections: showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    final total = data.values.reduce((a, b) => a + b);
    return data.entries.map((entry) {
      final percentage = (entry.value / total) * 100;
      return PieChartSectionData(
        color: _getColor(entry.key),
        value: percentage,
        title: '${percentage.toStringAsFixed(1)}%',
        radius: 100,
        titleStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
    }).toList();
  }

  Color _getColor(String status) {
    switch (status) {
      case 'early':
        return Colors.green;
      case 'late':
        return Colors.red;
      case 'dont come':
        return Colors.orange;
      case 'forget':
        return Colors.blue;
      case 'weekendday':
        return Colors.grey;
      default:
        return Colors.black;
    }
  }
}
