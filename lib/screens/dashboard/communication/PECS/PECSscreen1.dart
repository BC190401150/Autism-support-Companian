import 'package:autism_support_fp/screens/dashboard/communication/PECS/PECSscreen2.dart';
import 'package:flutter/material.dart';


class DragAndDropExample extends StatefulWidget {
  @override
  _DragAndDropExampleState createState() => _DragAndDropExampleState();
}

class _DragAndDropExampleState extends State<DragAndDropExample> {
  // Define the correct answers for each drop target
  String correctAnswer1 = 'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-bed-96.png?alt=media&token=63808f69-490f-4271-87ee-01a052979f8f';
  String correctAnswer2 = 'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-couch-and-lamp-96.png?alt=media&token=32a10ef4-7498-4a25-8eba-e6d4b5c17fcc';
  String correctAnswer3 = 'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/Communication%20board%202%2Ficons8-airplane-96.png?alt=media&token=8dbba6d9-d79e-493c-8188-c516b236cde8';
  String correctAnswer4 = 'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/Communication%20board%202%2Ficons8-ambulance-96.png?alt=media&token=ff9eec93-adfe-4e3c-9c83-27cd2f2bd943';
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
                  imageUrl: correctAnswer1,
                  droppedImage: droppedImage1,
                  onAccept: (data) {
                    if (data == correctAnswer1) {
                      setState(() {
                        droppedImage1 = data;
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewScreen2()),
          );
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
              'Bad',
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

