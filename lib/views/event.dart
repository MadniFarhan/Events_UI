import 'package:flutter/material.dart';

import 'CustomCard.dart';
import 'background.dart';
import 'horizontallist.dart';

class events extends StatefulWidget {
  @override
  State<events> createState() => _eventsState();
}

class _eventsState extends State<events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        background(),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text(
                        "local Events",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      Spacer(),
                      Icon(
                        Icons.person_2_outlined,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    "What's up",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                horizontallist(),
                SizedBox(
                  height: 20,
                ),
                CustomCard(
                  imagePath: 'assets/images/music.jpg',
                  title: '5,Kilometer Down Run',
                  icon: Icons.location_on,
                  iconText: 'gulberg III phase',
                  // leftText: 'Left Text 1',
                ),
                CustomCard(
                  imagePath: 'assets/images/pizza.jpg',
                  title: 'Granite Cooking Class',
                  icon: Icons.location_on,
                  iconText: 'Food count Aveneo',
                  // leftText: 'Left Text 2',
                ),
                CustomCard(
                  imagePath: 'assets/images/school.jpg',
                  title: 'University of Eduction',
                  icon: Icons.location_on,
                  iconText: 'Degree Events',
                  // leftText: 'Left Text 2',
                ),
                CustomCard(
                  imagePath: 'assets/images/study.jpg',
                  title: 'Pentaloop Software',
                  icon: Icons.location_on,
                  iconText: 'Johar Town Lahore',
                  // leftText: 'Left Text 2',
                ),
                CustomCard(
                  imagePath: 'assets/images/lab2.jpg',
                  title: 'Laibrary of lahore university',
                  icon: Icons.location_on,
                  iconText: 'Lahore road ',
                  // leftText: 'Left Text 2',
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
