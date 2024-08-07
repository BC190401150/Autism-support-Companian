import 'package:autism_support_fp/screens/dashboard/soicalskill/problem_solving_screen.dart';
import 'package:flutter/material.dart';
import 'emotion_recognition.dart';

class SocialSkillsTrainingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Social Skills Training',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            _buildModuleItem(
              title: 'Emotion Recognition',
              description: 'Practice identifying emotions through interactive quizzes and exercises.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmotionRecognitionScreen(),
                  ),
                );
              },
            ),
            _buildModuleItem(
              title: 'Problem Solving',
              description: 'Engage in problem-solving scenarios to improve critical thinking and decision-making skills.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProblemSolvingScreen(title: 'Problem Solving'),
                  ),
                );
              },
            ),
            // SizedBox(height: 20),
            // Text(
            //   'Virtual Scenarios for Social Interaction',
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // SizedBox(height: 10),
            // _buildScenarioItem(
            //   title: 'Public Speaking',
            //   description: 'Simulate public speaking scenarios to practice communication skills in front of others.',
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => PlaceholderScreen(title: 'Public Speaking'),
            //       ),
            //     );
            //   },
            // ),
            // _buildScenarioItem(
            //   title: 'Group Discussions',
            //   description: 'Participate in virtual group discussions to enhance teamwork and collaboration abilities.',
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => PlaceholderScreen(title: 'Group Discussions'),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
    );
  }

  Widget _buildModuleItem({required String title, required String description, required VoidCallback onTap}) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        onTap: onTap,
      ),
    );
  }

  Widget _buildScenarioItem({required String title, required String description, required VoidCallback onTap}) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        onTap: onTap,
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String title;

  PlaceholderScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Content for $title will be implemented here.'),
      ),
    );
  }
}
