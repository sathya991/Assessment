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
  String _email = "";
  String _username = "";
  String _phone = "";
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
                "Register",
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
                decoration: BasicUtilities().textInputTheme("Username"),
                validator: (username) =>
                    BasicUtilities().usernameValidate(username!),
                onSaved: (txt) => _username = txt!,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: BasicUtilities().textInputTheme("Phone"),
                validator: (phone) => BasicUtilities().phoneValidate(phone!),
                keyboardType: TextInputType.number,
                onSaved: (txt) => _phone = txt!,
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
                validator: (password) =>
                    BasicUtilities().passwordValidate(password!),
                obscureText: _passwordNotVisible,
                enableSuggestions: false,
                autocorrect: false,
                onSaved: (txt) => _password = txt!,
              ),
              const SizedBox(
                height: 25,
              ),
              BasicUtilities().styleRoundedButton("Register", () => null),
            ],
          )),
    );
  }
}
