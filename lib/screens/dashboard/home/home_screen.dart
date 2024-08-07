import 'package:autism_support_fp/screens/dashboard/communication/communication_Home.dart';
import 'package:autism_support_fp/screens/dashboard/sensory/sensory_support_widget.dart';
import 'package:autism_support_fp/screens/dashboard/soicalskill/social_training_screen.dart';
import 'package:autism_support_fp/screens/dashboard/task/task_management_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../customWidgets/drawer_page.dart';
import '../../../resources/resources.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    SensorySupportWidget(),
    CommunicationToolsWidget(),
    TaskManagementWidget(),
    SocialSkillsTrainingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Autism Support Companion", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),),
        backgroundColor: Resource.colors.themeColor,
        leading: Builder(
          builder: (context) => Container(
            child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Icon(Icons.menu, color: Colors.white, size: 26),
            ),
          ),
        ),
        actions: [],
      ),
      drawer: DrawerFiles(),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement,color:Colors.black38,),
            label: 'Sensory Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_in_talk,color: Colors.black38,),
            label: 'Communication',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task,color:Colors.black38),
            label: 'task ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.social_distance,color:Colors.black38),
            label: 'Social skill ',
          ),
        ],
        currentIndex: _selectedIndex,
        // navigation bar Text color
        selectedItemColor: Resource.colors.themeColor,
        unselectedItemColor: Resource.colors.greyColor2,
        onTap: _onItemTapped,
      ),
    );
  }
}
