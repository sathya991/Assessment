import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import '../Widgets/login.dart';
import '../Widgets/register.dart';

class LoginNRegisterScreen extends StatefulWidget {
  const LoginNRegisterScreen({Key? key}) : super(key: key);

  @override
  State<LoginNRegisterScreen> createState() => _LoginNRegisterScreenState();
}

class _LoginNRegisterScreenState extends State<LoginNRegisterScreen> {
  bool isSignup = true;
  String theTextAbove = "Already have an account?";
  String currentText = "Login here";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              loginOrSignup(),
              const Spacer(),
              bottomSingleWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomSingleWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            theTextAbove,
            style: const TextStyle(color: Color.fromRGBO(131, 142, 161, 1)),
          ),
          const SizedBox(
            height: 2,
          ),
          GestureDetector(
            onTap: widgetChange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  currentText,
                  style: const TextStyle(
                    color: Color.fromRGBO(39, 67, 140, 1),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                const Icon(
                  FontAwesomeIcons.solidCircleRight,
                  size: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  widgetChange() {
    if (isSignup) {
      setState(() {
        isSignup = false;
      });
    } else {
      setState(() {
        isSignup = true;
      });
    }
  }

  Widget loginOrSignup() {
    if (isSignup) {
      setState(() {
        currentText = "Login here";
        theTextAbove = "Already have an account?";
      });
      return const RegisterWidget();
    }
    setState(() {
      currentText = "Sign up now";
      theTextAbove = "No account yet?";
    });
    return const LoginWidget();
  }
}
