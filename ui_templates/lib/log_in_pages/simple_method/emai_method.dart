import 'package:flutter/material.dart';

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

