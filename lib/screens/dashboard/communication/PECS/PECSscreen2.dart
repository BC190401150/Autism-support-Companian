import 'package:flutter/material.dart';

class NewScreen2 extends StatefulWidget {
  const NewScreen2({super.key});

  @override
  _NewScreen2State createState() => _NewScreen2State();
}

class _NewScreen2State extends State<NewScreen2> {
  // Define the correct answers for each drop target
  String correctAnswer1 = 'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/Communication%20board%202%2Ficons8-bicycle-96.png?alt=media&token=7c3b2f48-04c4-4135-bf1f-d701a20f1868';
  String correctAnswer2 = 'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/Communication%20board%202%2Ficons8-motorcycle-96.png?alt=media&token=f6998531-ea2d-441d-a800-d89de562c3cb';
  String correctAnswer3 = 'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/Communication%20board%202%2Ficons8-houses-96.png?alt=media&token=af9720f7-8a0f-4f86-9ffc-18eff4cf97b8';
  String correctAnswer4 = 'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/Communication%20board%202%2Ficons8-tractor-96.png?alt=media&token=9d247893-2f16-4974-bce1-a578ef6dfa2c';
  String? droppedImage1;
  String? droppedImage2;
  String? droppedImage3;
  String? droppedImage4;

  void resetImages() {
    setState(() {
      droppedImage1 = null;
      droppedImage2 = null;
      droppedImage3 = null;
      droppedImage4 = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Picture Exchange Communication',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DragTargetItem(
                  imageUrl: correctAnswer3,
                  droppedImage: droppedImage3,
                  onAccept: (data) {
                    if (data == correctAnswer3) {
                      setState(() {
                        droppedImage3 = data;
                      });
                    }
                  },
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DraggableItem(imageUrl: correctAnswer1),
                SizedBox(width: 20),
                DraggableItem(imageUrl: correctAnswer2),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DraggableItem(imageUrl: correctAnswer3),
                SizedBox(width: 20),
                DraggableItem(imageUrl: correctAnswer4),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        tooltip: 'New Screen',
        child: Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}

class DraggableItem extends StatelessWidget {
  final String imageUrl;

  DraggableItem({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Draggable<String>(
      data: imageUrl,
      child: ItemWidget(imageUrl: imageUrl),
      feedback: Material(
        child: ItemWidget(imageUrl: imageUrl),
        elevation: 4.0,
      ),
      childWhenDragging: Opacity(
        opacity: 0.5,
        child: ItemWidget(
          imageUrl: imageUrl,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class DragTargetItem extends StatelessWidget {
  final String imageUrl;
  final String? droppedImage;
  final Function(String) onAccept;

  DragTargetItem({
    required this.imageUrl,
    required this.droppedImage,
    required this.onAccept,
  });

  @override
  Widget build(BuildContext context) {
    return DragTarget<String>(
      onAccept: onAccept,
      builder: (
          BuildContext context,
          List<String?> candidateData,
          List<dynamic> rejectedData,
          ) {
        return Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
          child: droppedImage != null
              ? ItemWidget(imageUrl: droppedImage!)
              : Center(
            child: Text(
              'houses',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}

class ItemWidget extends StatelessWidget {
  final String imageUrl;
  final Color? color;

  ItemWidget({required this.imageUrl, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color ?? Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

