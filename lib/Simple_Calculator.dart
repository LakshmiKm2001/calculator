

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {


  TextEditingController number1=TextEditingController();
  TextEditingController number2=TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    var result;
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: number1,
              decoration: InputDecoration(labelText: 'Number 1'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: number2,
              decoration: InputDecoration(labelText: 'Number 2'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                 result= calculate(num1:number1.text, num2:number2.text );

                },
                child: Text("Calculate")),
          ),
          Text("Result is : $result")
        ],
      ),
    );
  }
  
 
}
String calculate({required String num1,required String num2}) {
  
  double x = double.parse(num1.toString());
  double y = double.parse(num2.toString());
  double sum = x + y;
     var result = sum.toString();
      return result;
  }
