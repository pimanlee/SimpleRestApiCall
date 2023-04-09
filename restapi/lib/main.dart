// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restapi/screens/home.dart';

main(List<String> args) {
  runApp(MainSrc());
}

class MainSrc extends StatelessWidget {
  const MainSrc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
