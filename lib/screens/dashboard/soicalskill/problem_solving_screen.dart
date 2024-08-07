import 'package:flutter/material.dart';

class ProblemSolvingScreen extends StatelessWidget {
  final String title;

  const ProblemSolvingScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildScenarioItem(
              title: 'Conflict Resolution',
              description: 'Two friends have a disagreement over a game they were playing. One friend accuses the other of cheating, leading to an argument. How would you approach resolving this conflict?',
            ),
            _buildScenarioItem(
              title: 'Time Management',
              description: 'You have multiple assignments due on the same day, and you also have a family gathering to attend. How would you prioritize your tasks and manage your time effectively?',
            ),
            _buildScenarioItem(
              title: 'Decision Making',
              description: 'You are presented with two options for your summer vacation: a beach trip with friends or a camping trip with family. Each option has its pros and cons. How would you make the decision?',
            ),
            _buildScenarioItem(
              title: 'Problem Identification',
              description: 'Your school is facing an issue with bullying in the playground. Students are afraid to report incidents, and teachers are struggling to address the problem effectively. How would you identify the root causes of this issue and propose solutions?',
            ),
            _buildScenarioItem(
              title: 'Creative Thinking',
              description: 'Your community wants to reduce plastic waste. Brainstorm and propose innovative solutions to encourage recycling and reduce plastic usage.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScenarioItem({required String title, required String description}) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        onTap: () {
          // Implement navigation to detail screen or exercises related to the scenario
        },
      ),
    );
  }
}
