import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Calculator(),
  ));
}
class Calculator extends StatelessWidget {
  final ValueNotifier<String> number1 = ValueNotifier('');
  final ValueNotifier<String> number2 = ValueNotifier('');
  ValueNotifier<double> output = ValueNotifier(0.0);

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ValueListenableBuilder<String>(
              valueListenable: number1,
              builder: (context, value, child) {
                return TextField(
                  onChanged: (newValue) => number1.value = newValue,
                  decoration: InputDecoration(labelText: 'Number 1'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ValueListenableBuilder<String>(
              valueListenable: number2,
              builder: (context, value, child) {
                return TextField(
                  onChanged: (newValue) => number2.value = newValue,
                  decoration: InputDecoration(labelText: 'Number 2'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
              output.value= calculateResult(num1: number1.value, num2: number2.value);
              },
              child: Text("Calculate"),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: output,
            builder: (context, value, child) {
              return Text("Result is: ${output.value}");
            },
          ),
        ],
      ),
    );
  }  

}
 double calculateResult({ num1=0,  num2=0}) { 
  if (num1=="" && num2==""){
    return 0; 
  }if(num1==""){
    num1=0;
  }if(num2==""){
    num2=0;
  }
  double x = double.parse(num1.toString());
  double y = double.parse(num2.toString());
                  double result= x+y;
                return result;
              }
