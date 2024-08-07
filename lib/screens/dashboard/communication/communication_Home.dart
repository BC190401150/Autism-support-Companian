import 'package:flutter/material.dart';

import 'PECS/PECSscreen1.dart';
import 'Boards/Communication1.dart';
import 'Boards/Communication2.dart';
import 'SGD/SGDScreen.dart';
import 'aAC_method_card.dart';
import 'Boards/communication 3.dart';
class CommunicationToolsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          // AAC Methods Section
          Text(
            'AAC Methods',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          // Actual AAC Methods Content
          ClipRRect(
            borderRadius: BorderRadius.circular(19),
            child: Container(
              color: Colors.blue.shade100, // Set your desired background color here
              child: ListTile(
                title: Text('Picture Exchange Communication System (PECS)',style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                leading: Icon(Icons.image),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DragAndDropExample()),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 4),
          // Actual AAC Methods Content
          ClipRRect(
            borderRadius: BorderRadius.circular(19),
            child: Container(
              color: Colors.blue.shade100, // Set your desired background color here
              child: ListTile(
                title: Text('Speech Generating Devices (SGD)',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                leading: Icon(Icons.speaker),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SpeechScreen()),
                  );
                },
              ),
            ),
          ),


          // AACMethodCard(
          //   title: 'Sign Language',
          //   icon: Icons.accessibility,
          //   onPressed: () {
          //     // Navigate to Sign Language details or functionality
          //   },
          // ),
          SizedBox(height: 32),
          // Customizable Communication Boards Section
          Text(
            'Customizable Communication Boards',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          // Placeholder for Communication Boards Content
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>communication1()));
              },
              child: Container(
                height: 100,
                color: Colors.purple[100],
                child: Center(child: Text('Communication Board 1')),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Exerciseddd()));

              },
              child: Container(
                height: 100,
                color: Colors.purple[100],
                child: Center(child: Text('Communication Board 2')),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>MemoryGamePage()));
              },
              child: Container(
                height: 100,
                color: Colors.purple[100],
                child: Center(child: Text('Communication Board 3')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
