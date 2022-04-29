import 'package:assessment/utilities/basic_utilities.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool _passwordNotVisible = true;
  String _email = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                onSaved: (txt) => _email = txt!,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (txt) => BasicUtilities().passwordValidate(txt!),
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
                  _password = tx!;
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
              BasicUtilities().styleRoundedButton("Login", () {}),
            ],
          )),
    );
  }
}
