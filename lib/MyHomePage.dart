import 'dart:io';

import 'package:flutter/material.dart';
import 'package:info_form_task_2/Help.dart';
import 'package:info_form_task_2/PersonalInfo.dart';
import 'package:info_form_task_2/SalaryCalculator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome To Home Screen"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PersonalInfo()));
                },
                child: Text("Personal Information")),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SalaryCalculator()));
            }, child: Text("Salary Calculator")),
            ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Help()));}, child: Text("Help")),
            ElevatedButton(onPressed: () {Navigator.pop(exit(0));}, child: Text("Exit"))
          ],
        ),
      ),
    );
  }
}
