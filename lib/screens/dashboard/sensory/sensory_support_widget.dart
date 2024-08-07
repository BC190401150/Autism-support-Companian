import 'package:flutter/material.dart';

void main() {
  runApp(AutismSupportApp());
}

class AutismSupportApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Autism Support',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SensorySupportWidget(),
    );
  }
}

class SensorySupportWidget extends StatelessWidget {
  final List<SensoryItem> calmingExercises1 = [
    SensoryItem(
      imagePath: 'assets/images/Media_240620_151153.gif',
      title: 'Calming Exercise 1',
      description:
      'Your open up your chest and shoulders while stretching the abdominals and hip flexors.\n\n'
          'Cobra pose : \n'
        '1.Strengthens the spine, with enough body stretching.\n'
        '2. Stimulates the abdominal organs and releases fatigue and stress.\n'
       ' 3.Might be good for managing breathing problems like asthma.\n',
    ),
  ];

  final List<SensoryItem> calmingExercises2 = [
    SensoryItem(
      imagePath: 'assets/images/GIF1.gif',
      title: 'Calming Exercise 2',
      description:
      'Sit cross-legged on a yoga mat with your hands on your knees, palms up. Keep your spine as straight as you can.\n\n'
          'Meditation:\n'
          '1. To rest the mind, body, and spirit.\n'
          '2. Concentration is an efficient need for the student.\n'
          '3. Meditation makes our minds free, focused, and concentrated.\n',
    ),
  ];

  final List<SensoryItem> calmingExercises3 = [
    SensoryItem(
      imagePath: 'assets/images/Media_240620_151541.gif',
      title: 'Calming Exercise 3',
      description:
      'Stand tall with your feet together and arms by your sides. Find a focal point in front of you to help maintain balance.Shift your weight onto your left foot. Root down through the left foot to create a stable.\n\n'
          'Tree pose\n'
        '1.Fun and easy balancing pose.\n'
    '2.Develops mind-body awareness.\n'
        '3.Improves posture, and relaxes the mind.\n',
    ),
  ];

  final List<SensoryItem> calmingExercises4 = [
    SensoryItem(
      imagePath: 'assets/images/Media_240620_151843.gif',
      title: 'Calming Exercise 4',
      description:
      'Stand tall with your feet together and arms by your sides. Step your feet about 3 to 4 feet apart Align your heels so they form a straight line.\n\n'
          'Triangle pose : \n'
      '1.Provides great stretch for the whole body.\n'
    '2.Good strength moves for the legs.\n'
     '3.Provides balance, energy anddevelops focus.\n'
    ),
  ];
  final List<SensoryItem> SensoryFriendly5 = [
    SensoryItem(
        imagePath: 'assets/images/GAF.gif',
        title: 'Sensory-Friendly Activities',
        description:
        'Take a stroll through a local park or nature reserve. Please encourage your child to explore.\n'
            'A sensory and autism-friendly park offers these benefits: \n\n'
            '1.Inclusive Play: Provides a safe and engaging environment tailored to the sensory needs of children with autism.\n'
            '2.Therapeutic Value: Features designed to reduce sensory overload and promote calmness, aiding in emotional regulation.\n'
             ),
  ];
  final List<SensoryItem> SensoryFriendly6 = [
    SensoryItem(
        imagePath: 'assets/images/image_6_.jpg',
        title: 'Hospital Experience',
        description:
        'Going to the hospital is typically accompanied by fear and stress, which is never easy for any family. For parents of children with autism, this can be especially challenging.'
            '1.Enhanced Coping Skills: Learning to manage stress can equip parents with effective coping strategies, improving their ability to handle the unique challenges of raising a child with autism.'
            '2.Improved Well-being: Reduced stress levels can lead to better overall well-being for autism parents, including improved physical health, mental health, and quality of life.'

    ),
  ];
  final List<SensoryItem> SensoryFriendly7 = [
    SensoryItem(
        imagePath: 'assets/images/image_7_.jpeg',
        title: 'Holidays Season for Autism',
        description:
        'The holiday season brings joy, warmth, and cherished family traditions.'
            'The holiday season brings joy, warmth, and cherished family traditions. For children with autism, it can also offer these benefits:'
            'Structured Social Interaction: Holiday traditions provide predictable, structured social interactions that can help children with autism practice and enhance their social skills in a familiar setting.'
            'Sensory Engagement: Many holiday activities, such as decorating and baking, offer sensory-rich experiences that can be enjoyable and beneficial for sensory integration.'

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Calming Exercises Section
            Text(
              'Calming Exercises',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Display Calming Exercises Content 1
            Column(
              children: calmingExercises1.map((exercise) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen1(item: exercise),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 150, // Adjust the height as needed
              color: Colors.blue[
              100 * ((calmingExercises1.indexOf(exercise) % 5) + 1)],
              child: Row(
                children: [
                  // Image
                  Expanded(
                      flex: 2,
                      child: Image.asset('assets/images/image_2_.png')
                  ),
                  // Text
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            exercise.title,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Your open up your chest and shoulders while stretching the abdominals and hip flexors.',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
      ),
            SizedBox(height: 16),
            // Display Calming Exercises Content 2
            Column(
              children: calmingExercises2.map((exercise) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen1(item: exercise),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 150, // Adjust the height as needed
                      color: Colors.blue[
                      100 * ((calmingExercises2.indexOf(exercise) % 5) + 1)],
                      child: Row(
                        children: [
                          // Image
                          Expanded(
                            flex: 2,
                            child:Image.asset('assets/images/image_1_.jpg'),
                          ),
                          // Text
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    exercise.title,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                      'Sit cross-legged on a yoga mat with your hands on your knees, palms up. Keep your spine as straight as you can.',

                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            // Display Calming Exercises Content 3
            Column(
              children: calmingExercises3.map((exercise) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen2(item: exercise),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 190, // Adjust the height as needed
                      color: Colors.blue[
                      100 * ((calmingExercises3.indexOf(exercise) % 5) + 1)],
                      child: Row(
                        children: [
                          // Image
                          Expanded(
                            flex: 2,
                            child:Image.asset('assets/images/sit.jpg'),
                          ),
                          // Text
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    exercise.title,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 1),
                                  Text(
                                    'Stand tall with your feet together and arms by your sides.Find a focal point in front of you to help maintain balance.Shift your weight onto your left foot.',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            // Display Calming Exercises Content 4
            Column(
              children: calmingExercises4.map((exercise) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen3(item: exercise),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 170, // Adjust the height as needed
                      color: Colors.blue[
                      100 * ((calmingExercises4.indexOf(exercise) % 5) + 1)],
                      child: Row(
                        children: [
                          // Image
                          Expanded(
                            flex: 2,
                            child: Image.asset('assets/images/ers.jpg'),
                          ),
                          // Text
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    exercise.title,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 1),
                                  Text(
                                    'Stand tall with your feet together and arms by your sides. Step your feet about 3 to 4 feet apart Align your heels so they form a straight line.',
                                     style: TextStyle(fontSize: 14),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 32),
            // Sensory-friendly Content Section
            Text(
              'Sensory-friendly Content',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Column(
              children: SensoryFriendly5.map((exercise) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen3(item: exercise),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 170, // Adjust the height as needed
                      color: Colors.blue.shade100,
                      child: Row(
                        children: [
                          // Image
                          Expanded(
                            flex: 2,
                            child: Image.asset('assets/images/image_5_.png'),
                          ),
                          // Text
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    exercise.title,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 1),
                                  Text(
                                    'Take a stroll through a local park or nature reserve. Please encourage your child to explore.',
                                     style: TextStyle(fontSize: 14),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Column(
              children: SensoryFriendly6.map((exercise) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen3(item: exercise),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 180, // Adjust the height as needed
                      color: Colors.blue.shade100,
                      child: Row(
                        children: [
                          // Image
                          Expanded(
                            flex: 2,
                            child: Image.asset('assets/images/image_6_.jpg'),
                          ),
                          // Text
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    exercise.title,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 1),
                                  Text(
                                    'Going to the hospital is typically accompanied by fear and stress, which is never easy for any family. For parents of children with autism, this can be especially challenging.',
                                    style: TextStyle(fontSize: 13),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Column(
              children: SensoryFriendly7.map((exercise) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen3(item: exercise),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 170, // Adjust the height as needed
                      color: Colors.blue.shade100,
                      child: Row(
                        children: [
                          // Image
                          Expanded(
                            flex: 2,
                            child: Image.asset('assets/images/image_7_.jpeg'),
                          ),
                          // Text
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    exercise.title,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 1),
                                  Text(
                                    'The holiday season brings joy, warmth, and cherished family traditions.',
                                    style: TextStyle(fontSize: 14),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),



          ],
        ),
      ),
    );
  }
}


class DetailScreen extends StatelessWidget {
  final dynamic item;

  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(item.imagePath),
            SizedBox(height: 16),
            Text(
              item.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              item.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


class DetailScreen1 extends StatelessWidget {
  final dynamic item;

  DetailScreen1({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(item.imagePath),
            SizedBox(height: 16),
            Text(
              item.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              item.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


class DetailScreen2 extends StatelessWidget {
  final dynamic item;

  DetailScreen2({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(item.imagePath),
            SizedBox(height: 16),
            Text(
              item.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              item.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


class DetailScreen3 extends StatelessWidget {
  final dynamic item;

  DetailScreen3({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(item.imagePath),
            SizedBox(height: 16),
            Text(
              item.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              item.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


class SensoryItem {
  final String imagePath;
  final String title;
  final String description;

  SensoryItem({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

class Sensory {
  final String imagePath;
  final String title;
  final String description;

  Sensory({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}
