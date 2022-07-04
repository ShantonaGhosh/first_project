import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../pages/home_page.dart';

class ApiCall {
  static Future<void> logIn(
      String cid, String userId, String password, BuildContext context) async {
    try {
      final http.Response response = await http.get(
        Uri.parse(
            'http://127.0.0.1:8000/rak_api/syncmobile_depot_image/check_user?cid=rak&user_id=IT03&user_pass=12345&version=13'),
      );

      final Map<String, dynamic> jsonresponse = json.decode(response.body);

      var userInfo = json.decode(response.body);
      var status = userInfo['status'];
      var userName = userInfo['user_name'];
      if (status == 'Success') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }

      print(userInfo);

      return userInfo;
    } on Exception catch (_) {
      throw Exception("Error on server");
    }
  }

