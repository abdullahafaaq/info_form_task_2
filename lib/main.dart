import 'package:flutter/material.dart';
import 'MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

// How are you/
//I am fine/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Personal Info Form',
        theme: ThemeData(primarySwatch: Colors.lightGreen),
        home: const MyHomePage());
  }
}

