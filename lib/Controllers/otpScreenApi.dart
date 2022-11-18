// ignore_for_file: unrelated_type_equality_checks

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class completeOtpRequest {
  static Future<bool> sendOtpTPhoneNo(String phoneno) async {
    try {
      var URL = Uri.parse('http://10.0.2.2:5000/sendotp');
      print(phoneno);
      var data = {"mobileno": phoneno.toString()};
      var client = http.Client();
      var response = await client.post(
        URL,
        body: jsonEncode(<String, String>{
          'mobileno': phoneno,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (error) {
      print(error);
    }
    return false;
  }

  static Future<bool> verifyOtp(String phoneno, String otp) async {
    try {
      print("Entered front end verify otp");
      var URL = Uri.parse('http://10.0.2.2:5000/verifyotp');
      var client = http.Client();
      var response = await client.post(
        URL,
        body: jsonEncode({"mobileno": phoneno, "otp": otp}),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      bool isVerified = jsonDecode(response.body)["verificationCheck"]["valid"];
      print("isVerified " + isVerified.toString());

      if (isVerified == true) {
        return true;
      }
      return false;
    } catch (error) {
      print(error);
    }
    return false;
  }
}
