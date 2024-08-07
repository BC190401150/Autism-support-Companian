import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class MemoryGamePage extends StatefulWidget {
  @override
  _MemoryGamePageState createState() => _MemoryGamePageState();
}

class _MemoryGamePageState extends State<MemoryGamePage> {
  List<String> itemNames = [
    '🍎', '🍎',
    '🍌', '🍌',
    '🍇', '🍇',
  ];

  List<String> items = [];
  List<bool> itemsOpened = [];
  List<int> itemsIndex = [];
  late int previousIndex;
  bool flip = false;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    items.addAll(itemNames);
    items.addAll(itemNames);
    items.shuffle();
    for (var i = 0; i < items.length; i++) {
      itemsOpened.add(true);
      itemsIndex.add(-1);
    }
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pair Activities'),
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 3 columns
            childAspectRatio: 1.0, // Square tiles
          ),
          itemCount: items.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (!itemsOpened[index]) return;
              setState(() {
                itemsOpened[index] = false;
                if (flip) {
                  if (items[previousIndex] != items[index]) {
                    itemsOpened[index] = true;
                    itemsOpened[previousIndex] = true;
                  }
                  flip = false;
                } else {
                  flip = true;
                }
                previousIndex = index;
              });
            },
            child: Card(
              margin: EdgeInsets.all(4),
              child: Center(
                child: Text(
                  itemsOpened[index] ? '?' : items[index],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MemoryGamePage(),
  ));
}
