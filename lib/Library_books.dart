// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Librarybooks extends StatelessWidget {
  const Librarybooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("books for you")),
      backgroundColor: Color.fromARGB(255, 241, 167, 139),
    );
  }
}