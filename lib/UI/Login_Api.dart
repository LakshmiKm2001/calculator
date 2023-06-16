import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'Api.dart';


class Login_Api extends StatefulWidget {
  @override
  State<Login_Api> createState() => _Login_ApiState();
}

class _Login_ApiState extends State<Login_Api> {

  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/1281150061/vector/register-account-submit-access-login-password-username-internet-online-website-concept.jpg?s=612x612&w=0&k=20&c=9HWSuA9IaU4o-CK6fALBS5eaO1ubnsM08EOYwgbwGBo="))),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  suffixIcon: Icon(Icons.person),
                  hintText: "User Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    signIn(controller:username, controller1: password);
                  },
                  child: Text("Login")),
            ),
          ],
        ),
      ),
    );
  }
}