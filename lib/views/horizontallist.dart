import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class horizontallist extends StatefulWidget{
  @override
  State<horizontallist> createState() => _horizontallistState();
}

class _horizontallistState extends State<horizontallist> {
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.search, 'text': 'All'},
    {'icon': Icons.music_note, 'text': 'Music'},
    {'icon': Icons.favorite, 'text': 'Favorites'},
    {'icon': Icons.person, 'text': 'Meetup'},
    {'icon': Icons.settings, 'text': 'Setting'},
  ];
  @override
  int _selectedIndex = -1; // Initially no item is selected
  Widget build(BuildContext context) {
 return  Container(
   height: 100, // Set the height of the container
   child: ListView.builder(
     scrollDirection: Axis.horizontal,
     itemCount: items.length,
     itemBuilder: (context, index) {
       return GestureDetector(
           onTap: () {
             setState(() {
               _selectedIndex = index; // Update the selected index
             });
           },
       child: Container(
         margin: const EdgeInsets.symmetric(horizontal: 8),
         width: 100, // Set the width of each item
         decoration: BoxDecoration(
           border: Border.all( color: _selectedIndex == index ? Colors.white : Colors.white70,
               width: 3),
           borderRadius: BorderRadius.all(Radius.circular(15)),
           color: _selectedIndex == index ? Colors.white : Colors.transparent,
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Icon(
               items[index]['icon'],
               size: 40,
               color: _selectedIndex == index ? Colors.orange : Colors.white,
             ),
             SizedBox(height: 8),
             Text(
               items[index]['text'],
               style: TextStyle(fontSize: 16,
                 color: _selectedIndex == index ? Colors.orange : Colors.white,),
             ),
           ],
         ),
         ),
       );
     },
   ),
 );
  }
}