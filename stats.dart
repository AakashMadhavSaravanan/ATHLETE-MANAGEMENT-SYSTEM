import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsPage extends StatelessWidget {
  final String username;
  const StatsPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Performance Stats'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Your Performance Metrics',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 300,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                series: <CartesianSeries>[
                  LineSeries<ChartData, String>(
                    dataSource: [
                      ChartData('Jan', 65),
                      ChartData('Feb', 68),
                      ChartData('Mar', 72),
                      ChartData('Apr', 75),
                      ChartData('May', 78),
                    ],
                    xValueMapper: (ChartData data, _) => data.month,
                    yValueMapper: (ChartData data, _) => data.score,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Recent Workouts',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildWorkoutItem('Strength Training', '2 hours', 'Apr 10'),
            _buildWorkoutItem('Cardio', '1.5 hours', 'Apr 9'),
            _buildWorkoutItem('Skills Practice', '2.5 hours', 'Apr 8'),
            _buildWorkoutItem('Recovery', '1 hour', 'Apr 7'),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkoutItem(String type, String duration, String date) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(date),
              ],
            ),
            Text(duration),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  final String month;
  final int score;

  ChartData(this.month, this.score);
}