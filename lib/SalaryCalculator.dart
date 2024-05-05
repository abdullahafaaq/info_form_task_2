import 'package:flutter/material.dart';
class SalaryCalculator extends StatefulWidget {
  const SalaryCalculator({super.key});

  @override
  State<SalaryCalculator> createState() => _SalaryCalculatorState();
}

class _SalaryCalculatorState extends State<SalaryCalculator> {
  final TextEditingController _controllerAmountPerDay = TextEditingController();
  final TextEditingController _controllerWorkingDays = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salary Calculator"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              TextField(
                controller: _controllerAmountPerDay,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Amount per Day",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0))),
              ),
              const SizedBox(height: 10.0),
              TextField(
                  controller: _controllerWorkingDays
                  , keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Working Days",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular((25.0)))
                  )
              ),
              SizedBox(height: 10.0,),
              ElevatedButton(onPressed: _calculateSalary, child: Text("Calculate")),Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Text("Your salary : $_salary",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35.0),),
              )
            ],
          ),
        ),
      ),
    );
  }
  String _salary = "";
  void _calculateSalary() {
    setState(() {
      int amountPerDay = int.tryParse(_controllerAmountPerDay.text) ?? 0;
      int workingDays = int.tryParse(_controllerWorkingDays.text) ?? 0;
      _salary = "${amountPerDay * workingDays}";
      _controllerAmountPerDay.clear();
      _controllerWorkingDays.clear();
    });
  }
}
