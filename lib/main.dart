import 'package:dixshopp/constant.dart';
import 'package:dixshopp/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DIXSHOP',
      theme: ThemeData(
        backgroundColor: Constant.bgColor,
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
    );
  }
}
