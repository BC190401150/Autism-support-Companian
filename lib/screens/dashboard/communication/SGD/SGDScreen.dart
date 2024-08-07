import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});

  @override
  _SpeechScreenState createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
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
        title: Text('Speech Generating Device'),
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
                  onPressed: () => _speakWord('Apple'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-apple-fruit-94%20(1).png?alt=media&token=13d50981-90f9-4a6b-b45b-4e1f676b536a',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Apple'),
                    ],
                  ),
                ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade200, // Set your desired background color here
          ),
          onPressed: () => _speakWord('Strawberry'),
          child: Column(
            children: [
              Image.network(
                'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-strawberry-94.png?alt=media&token=2247de3b-1d08-4b4c-a168-cf6eabf75fd5',
                height: 24.0, // Set the desired height
                width: 24.0,  // Set the desired width
              ),
              Text('Strawberry'),
            ],
          ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Ant'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-ant-94.png?alt=media&token=38874aa9-fe48-4274-acfe-6244b86b943d',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Ant'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Watermelon'),
                  child: Column(
                    children: [
                      Image.network(
                       'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-watermelon-94.png?alt=media&token=ec898259-a622-4374-af67-34677570f068',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Watermelon'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Taxi'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-taxi-94.png?alt=media&token=6117044c-d644-415f-9448-d832ea52998a',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Taxi'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Star'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-star-94.png?alt=media&token=88269039-145d-4e5b-929b-2cf146967b69',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Star'),
                    ],
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Shuttlecock'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-shuttlecock-94.png?alt=media&token=a80b8e22-ad23-428f-84c5-ecfd730537f3',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Shuttlecock'),
                    ],
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Sandwich'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-sandwich-with-fried-egg-94.png?alt=media&token=780b65bb-39ad-485a-b691-40c9823833b4',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Sandwich'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Pear'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-pear-94.png?alt=media&token=cc53c07d-d1a9-4f0f-a6e7-e6fc0379c9a9',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Pear'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Pigeon'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-peace-pigeon-94.png?alt=media&token=d6f5dcf3-9bea-4a6d-92db-a3a3e79aa7f1',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Pigeon'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Orange'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-orange-94.png?alt=media&token=b334c6b7-c03b-428d-8425-0b5545c279aa',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Orange'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Mosque'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-mosque-94.png?alt=media&token=bd6ff7e5-a917-4dfe-8837-016d581c0b4e',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Mosque'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Kick Scooter'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-kick-scooter-94.png?alt=media&token=730a4957-d0a2-42d8-95cc-55b8e72e6eba',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Kick Scooter'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Ice Cream'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-ice-cream-cone-94.png?alt=media&token=496bb609-a2df-45bd-ba05-9fd1913e17eb',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Ice Cream'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Heart Balloon'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-heart-balloon-94.png?alt=media&token=c4d5cd5d-a6ce-4bfe-a610-d818619cd8d6',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Heart Balloon'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Hamburger'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-hamburger-94.png?alt=media&token=79fbed66-c5d0-402e-a382-04e7c4d2ea32',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Hamburger'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('French fries'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-french-fries-94.png?alt=media&token=671a376c-c6cb-470e-b87d-fc828ad3e3d7',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('French fries'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Fly'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-fly-94.png?alt=media&token=02fa1234-d511-4f35-a34a-ccf79753b361',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Fly'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Elephant'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-elephant-94.png?alt=media&token=8b5d14e1-548a-4642-b700-7e5b7f2552eb',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Elephant'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Electric bike'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-electric-bike-94.png?alt=media&token=6a3c05f4-d35e-4122-b444-2923b4697f13',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Electric bike'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Eggs'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-eggs-94.png?alt=media&token=06405504-4084-4e54-aacf-01dff7339e69',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Eggs'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Eggplant'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-eggplant-94.png?alt=media&token=79790c87-4e62-4d01-ae95-c6f5fa455af4',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Eggplant'),
                    ],
                  ),
                ),ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Duck'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-duck-94.png?alt=media&token=35863b06-cfc8-477f-8e41-01222ca2866c',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Duck'),
                    ],
                  ),
                ),ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Corn'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-corn-94.png?alt=media&token=a04a3a1b-859d-4b75-ab33-930512ccb4ce',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Corn'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Cola'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-cola-94.png?alt=media&token=f46c7d21-5a25-43c9-b97a-d5a7b1f17960',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Cola'),
                    ],
                  ),
                ),





                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Coconut'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-coconut-94.png?alt=media&token=61d3f6c9-b24a-4bc7-b51f-d4ff9f0948a3',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Coconut'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Citrus'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-citrus-94.png?alt=media&token=5cfd567e-d69f-424e-85c3-18aa648d916b',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Citrus'),
                    ],
                  ),
                ),ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Cheese'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-cheese-94.png?alt=media&token=b754d533-8025-4c76-bde1-92efee2920b8',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Cheese'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Car'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-car-94.png?alt=media&token=b5880615-1b07-4d99-9f72-5c70a3f11aa9',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Car'),
                    ],
                  ),
                ),





                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Candy'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-candy-94.png?alt=media&token=d97c8a65-2ff4-4f6c-bff5-d0072d0b6644',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Candy'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Camel'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-camel-94.png?alt=media&token=59e4420d-e103-40aa-a4b5-f0572a30f888',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Camel'),
                    ],
                  ),
                ),ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Cafe'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-cafe-94.png?alt=media&token=748c77df-2be6-42a8-b582-2ada7e59c58f',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Cafe'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('butterfly'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-butterfly-94.png?alt=media&token=b0a75ba4-bd64-420c-af72-5bf622cc1774',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Butterfly'),
                    ],
                  ),
                ),





                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('blueberry'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-blueberry-94.png?alt=media&token=8fc57d8a-434f-483a-b193-b8893625e84e',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Blueberry'),
                    ],
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Bird'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-bird-94.png?alt=media&token=67ea0bed-2c85-4c2f-8bbf-39b594c09edc',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Bird'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Basketball'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-basketball-94.png?alt=media&token=1b002155-88e5-41b1-a21a-2b8008693de5',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Basketball'),
                    ],
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('banana'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-banana-94%20(1).png?alt=media&token=fc6db9d6-e1cb-42f5-a585-a45411fbe114',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Banana'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200, // Set your desired background color here
                  ),
                  onPressed: () => _speakWord('Avocado'),
                  child: Column(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/flutterautism.appspot.com/o/picture%2Ficons8-avocado-94%20(1).png?alt=media&token=7f815c41-6a56-4db6-86af-c9f899266860',
                        height: 24.0, // Set the desired height
                        width: 24.0,  // Set the desired width
                      ),
                      Text('Avocado'),
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
