import 'dart:developer';

import 'package:flutter/material.dart';

class SICalculator extends StatefulWidget {
  const SICalculator({super.key});

  @override
  State<SICalculator> createState() => _SICalculatorState();
}

class _SICalculatorState extends State<SICalculator> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController principleTextController;
  final timeTextController = TextEditingController();
  final rateTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    principleTextController = TextEditingController();
  }

  @override
  void dispose() {
    principleTextController.dispose();
    timeTextController.dispose();
    rateTextController.dispose();
    super.dispose();
  }

  handleForm() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    log("principle: ${principleTextController.text}");

    var principle = int.parse(principleTextController.text);
    var time = int.parse(timeTextController.text);
    var rate = int.parse(rateTextController.text);

    var interest = (principle * time * rate) / 100;

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("RESULT"),
            content: Text("Interest = $interest"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SI Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: principleTextController,
                decoration: InputDecoration(
                  hintText: "Principle",
                ),
                keyboardType: TextInputType.number,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Principle is required";
                  }
                  return null;
                },
              ),
              TextField(
                controller: timeTextController,
                decoration: InputDecoration(
                  hintText: "Time",
                ),
              ),
              TextField(
                controller: rateTextController,
                decoration: InputDecoration(
                  hintText: "Rate",
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    handleForm();
                  },
                  child: Text("Calculate Interest"),
                ),
              ),

              SizedBox(height: 20),

              // GridView Test
              Expanded(
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        width: 100,
                        color: Colors.teal,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
