import 'package:flutter/material.dart';

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
            height * 0.2,
            width * 0.08,
            height * 0.1,
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
            ],
          ),
        ),
      ),
    );
  }

  Column otherMethod(double height, double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: height * 0.02),
        Text(
          "--OR--",
          style: TextStyle(color: Colors.white, fontFamily: 'Momo'),
        ),
        SizedBox(height: height * 0.02),
        Text(
          "Sign in with",
          style: TextStyle(color: Colors.white, fontFamily: 'Momo'),
        ),
        SizedBox(height: height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
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
                style: TextStyle(color: Colors.white, fontFamily: 'Momo'),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.white, fontFamily: 'Momo'),
            ),
          ),
        ],
      ),
    );
  }

  Column passwordMethod(double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: TextStyle(color: Colors.white, fontFamily: "Momo"),
        ),
        Container(
          height: height * 0.06,
          // alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff478de0).withValues(alpha: 0.8),
                offset: Offset(0, 4),
                // blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: height * 0.02),
              border: InputBorder.none,
              hintText: "Enter password",
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(Icons.password, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Column emaiMethod(double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(
            fontFamily: 'Momo',
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        SizedBox(height: height * 0.01),
        Container(
          alignment: Alignment.centerLeft,
          height: height * 0.06,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff478de0),
                // blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.email, color: Colors.white),
              hintText: " Enter your email or username",
              hintStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
              fillColor: Colors.white,
            ),
            cursorColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
