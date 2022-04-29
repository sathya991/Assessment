import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BasicUtilities {
  final shape2 = const StadiumBorder();
  styleRoundedButton(String text, Function()? a) {
    return ElevatedButton(
      onPressed: a,
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith<Size?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Size(30.w, 5.h);
            }
            return Size(30.w, 5.h);
          },
        ),
        maximumSize: MaterialStateProperty.resolveWith<Size?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Size(40.w, 5.h);
            }
            return Size(40.w, 5.h);
          },
        ),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return GoogleFonts.roboto(fontWeight: FontWeight.w800);
            }
            return GoogleFonts.roboto(fontWeight: FontWeight.w800);
          },
        ),
        shape: MaterialStateProperty.resolveWith<StadiumBorder>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return shape2;
            }
            return shape2;
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.blueGrey[100];
            }
            return Colors.blueGrey[100];
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.black;
            }
            return Colors.black;
          },
        ),
        // shape: shape2,
        elevation: MaterialStateProperty.resolveWith<double>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return 0;
            }
            return 0;
          },
        ),
      ),
    );
  }

  TextStyle headTextStyle() {
    return GoogleFonts.roboto(fontSize: 2.6.h, fontWeight: FontWeight.bold);
  }

  TextStyle listTextStyle() {
    return GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 2.2.h);
  }

  Widget returnSameStyle(String headingText, String buttonText, double? height,
      List<Widget> list) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 4.h, 0, 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buttonText == ""
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      headingText,
                      style: BasicUtilities().headTextStyle(),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      headingText,
                      style: BasicUtilities().headTextStyle(),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: BasicUtilities()
                          .styleRoundedButton(buttonText, () {}),
                    ),
                  ],
                ),
          SizedBox(
            height: 2.5.h,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: list,
            ),
          )
        ],
      ),
    );
  }

  emailValidate(String email) {
    if (email.isEmpty) {
      return "Please enter a valid email";
    }
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    if (!emailValid) {
      return "Please enter a valid email";
    }
    return null;
  }

  usernameValidate(String userName) {
    if (userName.isEmpty) {
      return "Please enter a valid username";
    } else if (userName.length < 4 || userName.length > 12) {
      return "Username length should be between 4 and 12 letters";
    } else if (userName.contains(" ")) {
      return "Username must not contain spaces";
    }
    return null;
  }

  phoneValidate(String phone) {
    if (phone.length != 10 || phone.isEmpty) {
      return "Enter a valid mobile number";
    }
    return null;
  }

  passwordValidate(String password) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (password.isEmpty) {
      return "Please enter a password";
    }
    if (!regex.hasMatch(password)) {
      return "Password should contain\n * One upper case character \n * One lower case character\n * One digit\n * One special character\n * Must be atleast 8 characters long";
    }
    return null;
  }

  InputDecoration textInputTheme(String text) {
    return InputDecoration(label: Text(text));
  }
}
