import 'package:assessment/ApiManager/api_manager.dart';
import 'package:assessment/utilities/basic_utilities.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _passwordNotVisible = true;
  String email = "";
  String password = "";

  login() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      ApiManager().login(email, password, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 50, 25, 35),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "Login",
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500, fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: BasicUtilities().textInputTheme("Email"),
                validator: (txt) => BasicUtilities().emailValidate(txt!),
                onSaved: (txt) => email = txt!,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordNotVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordNotVisible = !_passwordNotVisible;
                      });
                    },
                  ),
                  labelText: "Password",
                ),
                obscureText: _passwordNotVisible,
                onSaved: (tx) {
                  password = tx!;
                },
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Color.fromRGBO(131, 142, 161, 1), fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: login, child: const Text("Login")),
            ],
          )),
    );
  }
}
