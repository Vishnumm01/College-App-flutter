// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class ebooks extends StatelessWidget {
  final List<String> buttonNames = ["CT", 'EL', 'CHE', 'MECH', 'CIVIL'];
  final List<Color> buttonColors = [
    Color.fromARGB(255, 8, 69, 120),
    Color.fromARGB(255, 62, 212, 67),
    Color.fromARGB(255, 235, 146, 175),
    Color.fromARGB(255, 247, 223, 6),
    Color.fromARGB(255, 237, 144, 4),
  ];

  final List<IconData> buttonIcons = [
    Icons.computer,
    Icons.lightbulb,
    Icons.engineering,
    Icons.build,
    Icons.apartment,
  ];

  ebooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Books"),
      backgroundColor: Colors.lightBlue,
      ),
      body: GridView.builder(
        itemCount: buttonNames.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              // Handle button tap based on index
              print('Button tapped: ${buttonNames[index]}');
            },
            child: Container(
              decoration: BoxDecoration(
                color: buttonColors[index],
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    buttonColors[index].withOpacity(0.8),
                    buttonColors[index],
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    buttonIcons[index],
                    size: 50,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    buttonNames[index],
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
