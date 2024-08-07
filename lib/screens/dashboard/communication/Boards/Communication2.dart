import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Exerciseddd extends StatefulWidget {
  const Exerciseddd({Key? key}) : super(key: key);

  @override
  _ExercisedddState createState() => _ExercisedddState();
}

class _ExercisedddState extends State<Exerciseddd> {
  int _currentIndex = 0;
  List<Map<String, dynamic>> _items = [
    {
      'imagePath': 'assets/images/cold.png',
      'text': 'Cold Face',
      'question': 'Is this a cold face?',
      'answer': true,
    },
    {
      'imagePath': 'assets/images/crying.png',
      'text': 'Crying Face',
      'question': 'Is this a crying face?',
      'answer': true,
    },
    {
      'imagePath': 'assets/images/face96.png',
      'text': 'Face Holding Back Tears',
      'question': 'Is this a face holding back tears?',
      'answer': true,
    },
    {
      'imagePath': 'assets/images/wearyface.png',
      'text': 'Weary Face',
      'question': 'Is this a weary face?',
      'answer': true,
    },
    {
      'imagePath': 'assets/images/icons8-melting-face-96.png',
      'text': 'Melting Face',
      'question': 'Is this a melting face?',
      'answer': true,
    },
    {
      'imagePath': 'assets/images/icons8-disappointed-face-96.png',
      'text': 'Disappointed Face',
      'question': 'Is this a happy face?',
      'answer': false,
    },
    {
      'imagePath': 'assets/images/icons8-sad-94.png',
      'text': 'Sad Face',
      'question': 'Is this a sad face?',
      'answer': true,
    },
    {
      'imagePath': 'assets/images/icons8-beaming-face-with-smiling-eyes-94.png',
      'text': 'Happy Face',
      'question': 'Is this a sad face?',
      'answer': false,
    },
  ];

  bool? _selectedAnswer;
  bool _showSubmitButton = false;

  FlutterTts flutterTts = FlutterTts();

  void _speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(text);
  }

  void _nextItem() {
    if (_selectedAnswer == true) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _items.length;
        _selectedAnswer = null;  // Reset the selected answer
        _showSubmitButton = false; // Hide submit button
        _speak(_items[_currentIndex]['question']); // Speak the question of the next item
      });
    }
  }

  void _previousItem() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + _items.length) % _items.length;
      _selectedAnswer = null;  // Reset the selected answer
      _showSubmitButton = false; // Hide submit button
      _speak(_items[_currentIndex]['question']); // Speak the question of the previous item
    });
  }

  void _submitAnswer() {
    if (_selectedAnswer != null) {
      final correctAnswer = _items[_currentIndex]['answer'];
      final isCorrect = _selectedAnswer == correctAnswer;
      _speak(isCorrect ? 'Correct!' : 'Incorrect'); // Speak correct or incorrect
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(isCorrect ? 'Correct!' : 'Incorrect'),
            content: Text(isCorrect ? 'Well done!' : 'Try again!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  if (isCorrect) {
                    _nextItem(); // Move to the next item if answer was correct
                  }
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feelings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              _items[_currentIndex]['imagePath'],
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              _items[_currentIndex]['text'],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              _items[_currentIndex]['question'],
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedAnswer = true;
                      _showSubmitButton = true; // Show submit button when an answer is selected
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedAnswer == true ? Colors.green : Colors.red.shade100,
                  ),
                  child: Text('True'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedAnswer = false;
                      _showSubmitButton = true; // Show submit button when an answer is selected
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedAnswer == false ? Colors.green : Colors.red.shade100,
                  ),
                  child: Text('False'),
                ),
              ],
            ),
            SizedBox(height: 20),
            if (_showSubmitButton)
              ElevatedButton(
                onPressed: _submitAnswer,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade100, // Set the background color to blue
                ),
                child: Text('Submit'),
              ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
