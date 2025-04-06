import 'package:flutter/material.dart';

class CareerGuidancePage extends StatelessWidget {
  final String username;
  const CareerGuidancePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Career Guidance'),
      ),
      body: SingleChildScrollView( // <-- Added scroll view
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Career Path Recommendations',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildRecommendationCard(
                'Professional League',
                'Based on your performance, you have potential to join professional leagues.',
                Icons.stars,
              ),
              _buildRecommendationCard(
                'Coaching Certification',
                'Consider getting certified as a coach to share your expertise.',
                Icons.school,
              ),
              _buildRecommendationCard(
                'Sports Management',
                'Your leadership skills suggest potential in sports management.',
                Icons.business,
              ),
              const SizedBox(height: 20),
              const Text(
                'Training Schedule',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildTrainingScheduleItem('Monday', 'Strength Training'),
              _buildTrainingScheduleItem('Tuesday', 'Cardio'),
              _buildTrainingScheduleItem('Wednesday', 'Skills Development'),
              _buildTrainingScheduleItem('Thursday', 'Recovery'),
              _buildTrainingScheduleItem('Friday', 'Game Simulation'),
              _buildTrainingScheduleItem('Saturday', 'Team Practice'),
              _buildTrainingScheduleItem('Sunday', 'Rest'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecommendationCard(String title, String description, IconData icon) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrainingScheduleItem(String day, String activity) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              day,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(activity),
          ],
        ),
      ),
    );
  }
}
