import 'package:flutter/material.dart';
import 'emai_method.dart';
import 'password_method.dart';
import 'other_method.dart';

// import 'forgot_or_remember.dart';

class SimpleBlue extends StatefulWidget {
  const SimpleBlue({super.key});

  @override
  State<SimpleBlue> createState() => _SimpleState();
}

class _SimpleState extends State<SimpleBlue> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xff478de0),
                Color(0xff398AE5),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              width * 0.08,
              height * 0.12,
              width * 0.08,
              height * 0.08,
            ),
            child: Column(
              children: [
                Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontFamily: "Black_Ops",
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: height * 0.04),
                emaiMethod(height),
                SizedBox(height: height * 0.04),
                passwordMethod(height),
                forgotOrRemember(height),
                logInButton(),
                otherMethod(height, width),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  ElevatedButton logInButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          "LOGIN",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20,
            fontFamily: 'Black_Ops',
          ),
        ),
      ),
    );
  }

  Padding forgotOrRemember(double height) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: ((value) {
                  setState(() {
                    rememberMe = value!;
                  });
                }),
                // focusColor: Colors.white,
                // hoverColor: Colors.white,
                // checkColor: Colors.white,
                activeColor: Colors.white,
                side: BorderSide(color: Colors.white),
              ),
              Text(
                "Remember me",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Momo',
                  fontSize: height * 0.012,
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Momo',
                fontSize: height * 0.012,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
