import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final IconData icon;
  final String iconText;

  DetailsPage({
    required this.imagePath,
    required this.title,
    required this.icon,
    required this.iconText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            SizedBox(height: 16),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(icon),
                SizedBox(width: 8),
                Text(iconText),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
