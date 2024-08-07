import 'package:flutter/material.dart';
class AACMethodCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  AACMethodCard({required this.title, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title, style: TextStyle(color:Colors.black,fontSize: 20, fontWeight: FontWeight.bold)),
        onTap: onPressed,
      ),
    );
  }
}
