// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Noticeboard extends StatelessWidget {
  Noticeboard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 244, 247),
      appBar: AppBar(title: Text("NOTICE BOARD"),titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      ) ,backgroundColor: Colors.blue,),
      body: Card(
        elevation: 5,
        shadowColor: Colors.black,
        
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8), // Adjust the corner radius
    side: BorderSide(
      color: Colors.black, // Color of the border
      width: 4.0,
     // Width of the border
    ),
  ),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(26, 240, 153, 153),Color.fromARGB(26, 240, 153, 153)],
              //begin: Alignment.topLeft,
              //end: Alignment.center,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today, color: const Color.fromARGB(255, 15, 14, 14)),
                    SizedBox(width: 8),
                    Text(
                      "Event Date",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 21, 18, 18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "Event Title",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 28, 15, 15),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "Hai all,",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 8, 7, 7),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
