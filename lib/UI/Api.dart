import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

Future<Response?> signIn({required TextEditingController controller,required TextEditingController controller1}) async {
    var dio = Dio();
    try {
      var response = await dio.post(
          'http://101.53.135.201:8006/api/method/kvn_farmrich.api.v1.auth.authenticate',
          data: {"username": controller.text, "password": controller1.text},
          options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ));
      print(response.data);
      return response;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
  jhg