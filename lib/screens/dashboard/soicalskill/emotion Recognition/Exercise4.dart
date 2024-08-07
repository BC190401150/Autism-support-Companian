import 'package:flutter/material.dart';
import 'dart:math';

class PuzzleHomePage extends StatefulWidget {
  @override
  _PuzzleHomePageState createState() => _PuzzleHomePageState();
}

class _PuzzleHomePageState extends State<PuzzleHomePage> {
  late List<int> tiles;
  final int gridSize = 3;
  final int emptyTile = 8; // Represents the empty tile

  @override
  void initState() {
    super.initState();
    _initializePuzzle();
  }

  void _initializePuzzle() {
    tiles = List<int>.generate(gridSize * gridSize, (index) => index);
    tiles.shuffle();
    setState(() {});
  }

  bool _isSolved() {
    for (int i = 0; i < tiles.length - 1; i++) {
      if (tiles[i] != i) {
        return false;
      }
    }
    return true;
  }

  void _moveTile(int index) {
    int emptyIndex = tiles.indexOf(emptyTile);
    int row = index ~/ gridSize;
    int col = index % gridSize;
    int emptyRow = emptyIndex ~/ gridSize;
    int emptyCol = emptyIndex % gridSize;

    if ((row - emptyRow).abs() + (col - emptyCol).abs() == 1) {
      setState(() {
        tiles[emptyIndex] = tiles[index];
        tiles[index] = emptyTile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_isSolved())
            Text(
              'You Win!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridSize,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemCount: tiles.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  _moveTile(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: tiles[index] == emptyTile ? Colors.white : Colors.blue,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: tiles[index] != emptyTile
                        ? Text(
                      '${tiles[index] + 1}',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    )
                        : null,
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _initializePuzzle,
            child: Text('Shuffle'),
          ),
        ],
      ),
    );
  }
}
