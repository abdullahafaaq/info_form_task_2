import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help Menu"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text("Instructions",style: TextStyle(color: Colors.red,fontSize: 20.0,fontWeight: FontWeight.bold),),SizedBox(height: 10.0,),
              Text(
                  "1) You can add your personal information from home screen by pressing 'Personal Information' button",
                style: TextStyle(color: Colors.amber,fontSize: 15.0,fontWeight: FontWeight.bold),
              ),Text(
                "2) You can calculate salary by pressing 'Salary Calculator' button on home screen, Its simple just enter your numbers of days you work and income per day. ",
                style: TextStyle(color: Colors.amber,fontSize: 15.0,fontWeight: FontWeight.bold),
              ),Text(
                "3) I am writing this because i am enjoying designing my app.",
                style: TextStyle(color: Colors.amber,fontSize: 15.0,fontWeight: FontWeight.bold),
              ),Text(
                "4) LOL its not too difficult but also not that easy. Actually its easy <i dont know> ",
                style: TextStyle(color: Colors.amber,fontSize: 15.0,fontWeight: FontWeight.bold),
              ),Text(
                "5) I stucked many times on some easiest mistakes i have done during develpment of this app",
                style: TextStyle(color: Colors.amber,fontSize: 15.0,fontWeight: FontWeight.bold),
              ),SizedBox(height: 20.0,),
              Text(
                "SIR Zubair the great",
                style: TextStyle(color: Colors.green,fontSize: 20.0,fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
