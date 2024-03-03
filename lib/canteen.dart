// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class canteen extends StatelessWidget {
  const canteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: (Text("Canteen "))),
      backgroundColor: Color.fromARGB(255, 232, 149, 247),
    );
  }
}