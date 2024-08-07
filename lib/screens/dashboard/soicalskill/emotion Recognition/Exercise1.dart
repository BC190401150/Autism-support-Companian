import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  _Exercise1State createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  int _currentIndex = 0;
  List<Map<String, dynamic>> _items = [
    {
      'imagePath': 'assets/images/cold.png',
      'text': 'Cold Face',
    },
    {
      'imagePath': 'assets/images/crying.png',
      'text': 'Crying Face',
    },
    {
      'imagePath': 'assets/images/face96.png',
      'text': 'Face Holding Back Tears',
    },
    {
      'imagePath': 'assets/images/wearyface.png',
      'text': 'Weary Face',
    },
    {
      'imagePath': 'assets/images/icons8-melting-face-96.png',
      'text': 'Melting Face',
    },
    {
      'imagePath': 'assets/images/icons8-disappointed-face-96.png',
      'text': 'Disappointed Face',
    },
    {
      'imagePath': 'assets/images/icons8-sad-94.png',
      'text': 'Sad Face',
    },
    {
      'imagePath': 'assets/images/icons8-beaming-face-with-smiling-eyes-94.png',
      'text': 'Happy Face',
    },
    // Add more items as needed
  ];

  void _nextItem() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _items.length;
    });
  }

  void _previousItem() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + _items.length) % _items.length;
    });
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
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _previousItem,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade100, // Set the background color to red
                  ),
                  child: Text('Back'),
                ),
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: _nextItem,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade100, // Set the background color to red
                  ),
                  child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
