import 'dart:convert';

import 'package:assessment/FirstAssesment/Screens/list_display.dart';
import 'package:assessment/models/req_res_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  void register(String email, String password, BuildContext context) async {
    loginNRegister(email, password, context, "/api/register");
  }

  void login(String email, String password, BuildContext context) async {
    loginNRegister(email, password, context, "/api/login");
  }

  void loginNRegister(String email, String password, BuildContext context,
      String endpoint) async {
    try {
      http.Response response =
          await http.post(Uri.parse("https://reqres.in$endpoint"), body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        Navigator.of(context).pushNamed(ListDisplay.listDisplayRoute);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Error")));
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<ReqResList?> getList() async {
    try {
      http.Response response =
          await http.get(Uri.parse("https://reqres.in/api/unknown"));

      if (response.statusCode == 200) {
        var body = json.decode(response.body);
        return ReqResList.fromJson(body);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
