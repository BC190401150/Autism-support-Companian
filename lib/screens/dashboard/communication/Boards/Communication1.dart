import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class communication1 extends StatefulWidget {
  const communication1({super.key});

  @override
  _communication1State createState() => _communication1State();
}

class _communication1State extends State<communication1> {
  final TextEditingController _textController = TextEditingController();
  final FlutterTts _flutterTts = FlutterTts();

  void _speak() async {
    String text = _textController.text;
    if (text.isNotEmpty) {
      await _flutterTts.speak(text);
    }
  }

  void _speakWord(String word) async {
    await _flutterTts.speak(word);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objects'),
      ),
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('bed'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-bed-96.png?alt=media&token=63808f69-490f-4271-87ee-01a052979f8f',
                          height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Bed'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('balance scale'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-balance-scale-96.png?alt=media&token=d6beb92e-3416-434b-8e5d-876e7f32cdd2',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Balance scale'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('Cap'),
                    child: Column(
                      children: [
                        Image.network(
                         'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-billed-cap-96.png?alt=media&token=44ca37f4-214a-421e-8e2b-19a6a77dde8f',
                          height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Cap'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('books'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-books-emoji-96.png?alt=media&token=69c57da4-1f8e-44cd-a9f3-fd38fd171193',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Books'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('bucket'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-bucket-emoji-96.png?alt=media&token=27b6b9b0-249b-4705-ad9a-86c940c3953a',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Bucket'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('coat'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-coat-96.png?alt=media&token=1ed337b2-e010-4a84-aaf8-a669388a2246',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Coat'),
                      ],
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('couch and lamp'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-couch-and-lamp-96.png?alt=media&token=32a10ef4-7498-4a25-8eba-e6d4b5c17fcc',
                            height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Couch and lamp'),
                      ],
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('crown'),
                    child: Column(
                      children: [
                        Image.network(
                         'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-crown-96.png?alt=media&token=e57ee8fb-d0cb-4447-95e5-98dde98c09d3' ,
                            height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Crown'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('Desktop computer'),
                    child: Column(
                      children: [
                        Image.network(
                         'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-desktop-computer-96.png?alt=media&token=dfd42fb2-04a8-4f7d-b580-58c41702d457' ,
                            height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Desktop computer'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('Flat shoe'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-flat-shoe-96.png?alt=media&token=c0a551c7-f6a3-4da7-bd45-ce109074e590',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Flat shoe'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('Laptop'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-laptop-96.png?alt=media&token=ee5f8893-e8a4-4f80-8ff4-7ed6b4a46d68',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Laptop'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('Locked'),
                    child: Column(
                      children: [
                        Image.network(
                         'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-locked-96.png?alt=media&token=1b36c748-103b-42bb-9117-8c25f1d87247',
                          height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Locked'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('pencil'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-pencil-96.png?alt=media&token=1c7c9b80-e93c-4b22-b27c-528d62f4194d',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('pencil'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('puzzle piece'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-puzzle-piece-96.png?alt=media&token=c4bea13e-6378-41cc-bd59-b086f85bc04a',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('puzzle piece'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('Radio'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-radio-emoji-96.png?alt=media&token=f9225bbe-9f38-4b19-9bd3-28d748fddb33',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Radio'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('satellite antenna'),
                    child: Column(
                      children: [
                        Image.network(
                         'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-satellite-antenna-96.png?alt=media&token=a311b542-a206-4519-bdbe-2498232302de',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('satellite antenna'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('Shopping bags'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-shopping-bags-96.png?alt=media&token=47e1ef58-51bd-4f0a-983f-c47c7e90f0c9',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Shopping bags'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('shopping cart'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-shopping-cart-96.png?alt=media&token=1ccea08d-7e1c-4a0e-b850-718c6be36859',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Shopping cart'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('stethoscope'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-stethoscope-96.png?alt=media&token=623adb31-82ac-4dc7-9e20-5b2c0fa5fc67',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Stethoscope'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('syringe'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-syringe-96.png?alt=media&token=62b77f0e-98e7-426d-9535-cf20efc09b46',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Syringe'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('television'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-television-96.png?alt=media&token=c1d4e482-d08c-43d6-a721-fc808d98ad89',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Television'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('Test tube'),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-test-tube-96.png?alt=media&token=1f72d56d-da1a-43ba-8142-01411006bd96',
                           height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Test tube'),
                      ],
                    ),
                  ),ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200, // Set your desired background color here
                    ),
                    onPressed: () => _speakWord('sandal'),
                    child: Column(
                      children: [
                        Image.network(
                         'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/communication%20board%201%2Ficons8-thong-sandal-96.png?alt=media&token=716b051b-a8d8-4adf-90b7-b9ee6296f8b1',
                          height: 24.0, // Set the desired height
                          width: 24.0,  // Set the desired width
                        ),
                        Text('Sandal'),
                      ],
                    ),
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    _flutterTts.stop();
    super.dispose();
  }
}
