import 'package:flutter/material.dart';

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