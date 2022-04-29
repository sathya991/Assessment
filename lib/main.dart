import 'package:assessment/FirstAssesment/Screens/login_register.dart';
import 'package:assessment/SecondScreen/Screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.grey[200],
        ),
        home: const LoginNRegisterScreen(),
      );
    });
  }
}
