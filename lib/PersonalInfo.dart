import 'package:flutter/material.dart';
class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerAddress = TextEditingController();
  final TextEditingController _controllerAmountPerDay = TextEditingController();
  final TextEditingController _controllerWorkingDays = TextEditingController();

  String _name = "",
      _address = "",
      _phone = "",
      _amountPerDay = "",
      _workingDays = "",
      _salary = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Information Form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              TextField(
                controller: _controllerName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "NAME:",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0))),
              ),
              const SizedBox(
                height: 40.0,
              ),
              TextField(
                controller: _controllerPhone,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "Phone:",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0))),
              ),
              const SizedBox(
                height: 40.0,
              ),
              TextField(
                maxLines: 3,
                minLines: 1,
                controller: _controllerAddress,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                    labelText: "Address:",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0))),
              ),
              const SizedBox(
                height: 40.0,
              ),
              TextField(
                controller: _controllerAmountPerDay,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Amount per Day",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0))),
              ),
              const SizedBox(
                height: 40.0,
              ),
              TextField(
                controller: _controllerWorkingDays,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Working Days",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0))),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                onPressed: _calculateSalary,
                child: const Text('Calculate Salary'),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 30.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Name:$_name",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Phone:$_phone",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Address: $_address",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Salary:$_salary",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _calculateSalary() {
    setState(() {
      int amountPerDay = int.tryParse(_controllerAmountPerDay.text) ?? 0;
      int workingDays = int.tryParse(_controllerWorkingDays.text) ?? 0;
      _salary = "${amountPerDay * workingDays}";
      _name = _controllerName.text;
      _phone = _controllerPhone.text;
      _address = _controllerAddress.text;
      _controllerName.clear();
      _controllerPhone.clear();
      _controllerAddress.clear();
      _controllerAmountPerDay.clear();
      _controllerWorkingDays.clear();
    });
  }

}
