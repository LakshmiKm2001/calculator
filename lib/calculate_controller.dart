import 'package:flutter/material.dart';
import 'package:wahni_sample/Simple_Calculator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Calculator_contoller(),
  ));
}

class Calculator_contoller extends StatelessWidget{

  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
   
  ValueNotifier<double> result = ValueNotifier(0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield1(controller: num1, label: 'number 1'),
          ),
        
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield1(controller: num2, label: 'number 2'),
          ),

         Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
               result.value= calculate_sum(num1: num1.text, num2:num2.text);

                },
                child: Text("Calculate Sum")),
          ),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                result.value=calculate_mul(num1: num1.text,num2:num2.text);

                },
                child: Text("Calculate Mul")),
          ),



          ValueListenableBuilder(valueListenable: result,builder: (context, value, child) => 
             Text("Result is : ${result.value}"))
        ],
      ),
    );
  }

  TextField textfield1({required String label,required TextEditingController controller}) {
    return TextField(
      controller: controller,
          decoration: InputDecoration(labelText: label),
          );
  }
  }
  
  double calculate_mul({var num1=0, var num2=0}) {
     if (num1=="" && num2==""){
    return 0; 
  }if(num1==""){
    num1=0;
  }if(num2==""){
    num2=0;
  }

      double x=double.parse(num1);
      double y=double.parse(num2);
      var result=x*y;
      return result;
  }
 
 double calculate_sum({ var num1=0, var num2=0}) {
  if (num1=="" && num2==""){
    return 0; 
  }if(num1==""){
    num1=0;
  }if(num2==""){
    num2=0;
  }
      double x=double.parse(num1);
      double y=double.parse(num2);
      var result=x+y;
      return result;

  }