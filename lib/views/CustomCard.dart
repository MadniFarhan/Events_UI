import 'package:flutter/material.dart';

import 'DetailsPage.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final IconData icon;
  final String iconText;
  // final String leftText;

  CustomCard({
    required this.imagePath,
    required this.title,
    required this.icon,
    required this.iconText,
    // required this.leftText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsPage(
            imagePath: imagePath,
            title: title,
            icon: icon,
            iconText: iconText,
          ),
        ),
      );
    },
      child: Card(
        elevation: 4,
        color: Colors.white,
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
                bottomRight: Radius.circular(13),
                bottomLeft: Radius.circular(13)
              ),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   leftText,
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  SizedBox(height: 8),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(height: 8),
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
          ],
        ),
      ),
    );
  }
}
