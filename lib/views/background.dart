import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class background extends StatefulWidget{
  @override
  State<background> createState() => _backgroundState();
}

class _backgroundState extends State<background> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container (
      child: ClipPath(
        clipper: EggShapeClipper(),
        child: Container(
          height: 400,
          color: Colors.orange,

        ),
      ),

    ),
    );
  }
}
class EggShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height * 0.85); // Start from the bottom left corner
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height * 0.85); // Create the egg-shaped curve
    path.lineTo(size.width, 0); // Draw the top line
    path.close(); // Close the path
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}