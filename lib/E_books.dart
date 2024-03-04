// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:flutter/material.dart';

class ebooks extends StatelessWidget {
  const ebooks({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("books")),
      backgroundColor: const Color.fromARGB(255, 124, 196, 127),
    );
  }
}