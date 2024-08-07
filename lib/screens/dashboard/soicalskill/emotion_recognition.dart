import 'package:flutter/material.dart';

import 'emotion Recognition/Exercise1.dart';
import 'emotion Recognition/Exercise2.dart';
import 'emotion Recognition/Exercise3.dart';
import 'emotion Recognition/Exercise4.dart';


class EmotionRecognitionScreen extends StatefulWidget {
  @override
  _EmotionRecognitionScreenState createState() =>
      _EmotionRecognitionScreenState();
}

class _EmotionRecognitionScreenState extends State<EmotionRecognitionScreen> {
  int _currentQuestionIndex = 0;

  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'What emotion is expressed in the following image?',
      'imagePath': 'assets/images/happy.png',
      'options': ['Happy', 'Sad', 'Angry', 'Surprised'],
      'correctAnswer': 'Happy',
    },
    {
      'question': 'What emotion is expressed in the following image?',
      'imagePath': 'assets/images/sad.jpeg',
      'options': ['Happy', 'Sad', 'Angry', 'Surprised'],
      'correctAnswer': 'Sad',
    },
    {
      'question': 'What emotion is expressed in the following image?',
      'imagePath': 'assets/images/angry.jpeg',
      'options': ['Happy', 'Sad', 'Angry', 'Surprised'],
      'correctAnswer': 'Angry',
    },
    {
      'question': 'What emotion is expressed in the following image?',
      'imagePath': 'assets/images/surprised.png',
      'options': ['Happy', 'Sad', 'Angry', 'Surprised'],
      'correctAnswer': 'Surprised',
    },
  ];

  void _onOptionSelected(String selectedOption) {
    final correctAnswer =
    _questions[_currentQuestionIndex]['correctAnswer'] as String;
    bool isCorrect = selectedOption == correctAnswer;

    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      // Handle quiz completion
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Quiz Completed'),
          content: Text('You have completed the quiz!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _currentQuestionIndex = 0;
                });
              },
              child: Text('Restart'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Emotion Recognition'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Practice Activities',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            _buildQuizItem(
              question: currentQuestion['question'] as String,
              imagePath: currentQuestion['imagePath'] as String,
              options: currentQuestion['options'] as List<String>,
              correctAnswer: currentQuestion['correctAnswer'] as String,
              onOptionSelected: _onOptionSelected,
            ),
            _buildActivityItem(
              title: 'Emotion Recognition Exercise 1',
              description:
              'Feelings',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Exercise1(),
                  ),
                );
              },
            ),
            _buildActivityItem(
              title: 'Emotion Recognition Exercise 2',
              description: 'ABC Sliding puzzle',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Exercise2(),
                  ),
                );
              },
            ),
            _buildActivityItem(
              title: 'Emotion Recognition Exercise 3',
              description:
              'Match each letter of the English alphabet with a corresponding word.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizPage(),
                  ),
                );
              },
            ),
            _buildActivityItem(
              title: 'Emotion Recognition Exercise 4',
              description: '123 Sliding puzzle',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PuzzleHomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuizItem(
      {required String question,
        required String imagePath,
        required List<String> options,
        required String correctAnswer,
        required Function(String) onOptionSelected}) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imagePath,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              question,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ...options.map(
                (option) {
              bool isCorrect = option == correctAnswer;
              return ListTile(
                title: Text(option),
                onTap: () => onOptionSelected(option),
                tileColor: isCorrect ? Colors.green : null,
                selected: isCorrect,
                selectedTileColor: Colors.green.withOpacity(0.5),
                // Uncomment below line if you want to show incorrect options in red
                // tileColor: isCorrect ? Colors.green : (option == selectedOption ? Colors.red : null),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildActivityItem(
      {required String title,
        required String description,
        required VoidCallback onTap}) {
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

class Exercise1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emotion Recognition Exercise 1'),
      ),
      body: Center(
        child: Text('Exercise 1 Content'),
      ),
    );
  }
}

class Exercise2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emotion Recognition Exercise 2'),
      ),
      body: Center(
        child: Text('Exercise 2 Content'),
      ),
    );
  }
}
