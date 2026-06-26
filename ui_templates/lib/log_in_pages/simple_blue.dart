import 'package:flutter/material.dart';

class SimpleBlue extends StatefulWidget {
  const SimpleBlue({super.key});

  @override
  State<SimpleBlue> createState() => _SimpleState();
}

class _SimpleState extends State<SimpleBlue> {
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
              SizedBox(height: height*0.04,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                ],
              ),
          ),
        ),
      ),
    );
  }

  Column emaiMethod(double height) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    fontFamily: 'Playwrite',
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
                        blurRadius: 10,
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
                      hintText: " Enter an email or a username",
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
