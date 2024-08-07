import 'package:flutter/material.dart';
import 'dart:async';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> with SingleTickerProviderStateMixin {
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Apple__',

      'options': ['A', 'B', 'D', 'F'],
      'answer': 'A',
    },
    {
      'questionText': 'Butterfly__',

      'options': ['v', 'B', 'D', 'F'],
      'answer': 'B',
    },
    {
      'questionText': 'Cat__',

      'options': ['J', 'B', 'D', 'C'],
      'answer': 'C',
    },
    {
      'questionText': 'Dog__',

      'options': ['J', 'P', 'D', 'C'],
      'answer': 'D',
    },
    {
      'questionText': 'Elephant__',

      'options': ['A', 'E', 'D', 'C'],
      'answer': 'E',
    },
    {
      'questionText': 'Flower__',

      'options': ['F', 'E', 'D', 'C'],
      'answer': 'F',
    },
    {
      'questionText': 'Giraffe__',

      'options': ['v', 'E', 'D', 'G'],
      'answer': 'G',
    },
    {
      'questionText': 'House__',

      'options': ['H', 'E', 'D', 'G'],
      'answer': 'H',
    },
    {
      'questionText': 'Ice-cream__',

      'options': ['H', 'E', 'I', 'G'],
      'answer': 'I',
    },
    {
      'questionText': 'Jellyfish__',

      'options': ['J', 'E', 'I', 'G'],
      'answer': 'J',
    },
    {
      'questionText': 'King__',

      'options': ['J', 'K', 'I', 'G'],
      'answer': 'K',
    },
    {
      'questionText': 'Lion__',

      'options': ['L', 'K', 'I', 'G'],
      'answer': 'L',
    },
    {
      'questionText': 'Moon__',

      'options': ['L', 'K', 'I', 'M'],
      'answer': 'M',
    },
    {
      'questionText': 'Nurse__',

      'options': ['N', 'K', 'I', 'M'],
      'answer': 'N',
    },
    {
      'questionText': 'Oar__',

      'options': ['N', 'K', 'I', 'O'],
      'answer': 'O',
    },
    {
      'questionText': 'Panda__',

      'options': ['N', 'K', 'P', 'O'],
      'answer': 'P',
    },
    {
      'questionText': 'Queen__',

      'options': ['N', 'K', 'Q', 'O'],
      'answer': 'Q',
    },
    {
      'questionText': 'Rabbit__',

      'options': ['N', 'R', 'Q', 'O'],
      'answer': 'R',
    },
    {
      'questionText': 'Sun__',

      'options': ['S', 'R', 'Q', 'O'],
      'answer': 'S',
    },
    {
      'questionText': 'Tree__',

      'options': ['N', 'R', 'T', 'O'],
      'answer': 'T',
    },
    {
      'questionText': 'Umbrella__',

      'options': ['U', 'R', 'T', 'O'],
      'answer': 'U',
    },
    {
      'questionText': 'violet__',

      'options': ['U', 'R', 'T', 'V'],
      'answer': 'V',
    },
    {
      'questionText': 'walrus__',

      'options': ['W', 'R', 'T', 'V'],
      'answer': 'W',
    },
    {
      'questionText': 'Xylophone__',

      'options': ['W', 'R', 'X', 'V'],
      'answer': 'X',
    },
    {
      'questionText': 'Yoyo__',

      'options': ['Y', 'R', 'X', 'V'],
      'answer': 'Y',
    },
    {
      'questionText': 'Zebra__',

      'options': ['Y', 'R', 'X', 'Z'],
      'answer': 'Z',
    },

    // Add more questions here
  ];

  int _currentQuestionIndex = 0;
  int _score = 0;
  String? _selectedAnswer;
  bool? _isCorrect;
  Timer? _timer;
  int _remainingTime = 60;
  late AnimationController _animationController;

  void _startTimer() {
    _timer?.cancel();
    setState(() {
      _remainingTime = 60;
    });
    _animationController.forward(from: 0.0);
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _nextQuestion();
        }
      });
    });
  }

  void _answerQuestion(String selectedAnswer) {
    setState(() {
      _selectedAnswer = selectedAnswer;
      _isCorrect = selectedAnswer == _questions[_currentQuestionIndex]['answer'] as String;
      if (_isCorrect!) {
        _score++;
      }
      _timer?.cancel();
    });
  }

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
        _selectedAnswer = null;
        _isCorrect = null;
        _startTimer();
      } else {
        _showScore();
      }
    });
  }

  void _showScore() {
    _timer?.cancel();
    showDialog(
      context: context,
      builder: (context) => SingleChildScrollView(
          child:AlertDialog(
        title: Text('Quiz Completed'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your score is $_score/${_questions.length}'),
            SizedBox(height: 16),
            Text(
              'Correct Answers:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _questions.map((question) {
                String questionText = question['questionText'] as String;
                String correctAnswer = question['answer'] as String;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text('$questionText - $correctAnswer'),
                );
              }).toList(),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _currentQuestionIndex = 0;
                _score = 0;
                _selectedAnswer = null;
                _isCorrect = null;
              });
              Navigator.of(context).pop();
              _startTimer();
            },
            child: Text('Restart'),
          ),
        ],
      ),)
    );
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 60),
    );
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text('Exercise 3'),
    ),
    body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Question ${_currentQuestionIndex + 1}/${_questions.length}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    _questions[_currentQuestionIndex]['questionText'] as String,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  LinearProgressIndicator(
                    value: _remainingTime / 60,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Time remaining: $_remainingTime seconds',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                  SizedBox(height: 20),
                  ...(_questions[_currentQuestionIndex]['options'] as List<String>).map((option) {
                    bool isCorrectAnswer = option == _questions[_currentQuestionIndex]['answer'] as String;
                    bool isSelected = _selectedAnswer == option;
                    Color buttonColor;
                    if (_selectedAnswer == null) {
                      buttonColor = Colors.blue;
                    } else if (isCorrectAnswer) {
                      buttonColor = Colors.green;
                    } else if (isSelected) {
                      buttonColor = Colors.red;
                    } else {
                      buttonColor = Colors.blue;
                    }

                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: buttonColor,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: _selectedAnswer == null
                            ? () => _answerQuestion(option)
                            : null,
                        child: Text(option),
                      ),
                    );
                  }).toList(),
                  if (_selectedAnswer != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          _isCorrect! ? 'Correct!' : 'Incorrect!',
                          style: TextStyle(
                            fontSize: 24,
                            color: _isCorrect! ? Colors.green : Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: _nextQuestion,
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: ListTile(
                            title: Text('Next'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                            textColor: Colors.white,
                            iconColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),)
    );
  }
}
