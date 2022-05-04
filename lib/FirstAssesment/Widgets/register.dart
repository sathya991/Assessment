import 'package:assessment/ApiManager/api_manager.dart';
import 'package:assessment/utilities/basic_utilities.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  bool _passwordNotVisible = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email = "";

  String password = "";
  register() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      ApiManager().register(email, password, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 50, 25, 35),
      child: Form(
          key: _formKey,
          child: Column(children: [
            Text(
              "Register",
              style:
                  GoogleFonts.rubik(fontWeight: FontWeight.w500, fontSize: 25),
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
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
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
              ),
              obscureText: _passwordNotVisible,
              enableSuggestions: false,
              autocorrect: false,
              onSaved: (txt) => password = txt!,
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(onPressed: register, child: const Text("Register")),
          ])),
    );
  }
}
