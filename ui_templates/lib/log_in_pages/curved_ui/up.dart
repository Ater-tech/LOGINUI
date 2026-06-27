import 'package:flutter/material.dart';

Flexible up(double height, double width) {
  return Flexible(
    flex: 3,
    child: Padding(
      padding: EdgeInsetsGeometry.only(
        top: height * 0.12,
        left: width * 0.07,
        bottom: height * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            "Welcome Back",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    ),
  );
}
