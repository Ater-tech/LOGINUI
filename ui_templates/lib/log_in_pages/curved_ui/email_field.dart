import 'package:flutter/material.dart';

Container emailField(double width) {
  return Container(
    padding: EdgeInsets.only(left: width * 0.02, right: width * 0.01),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(225, 95, 27, .3),
          offset: Offset(0, 4),
          blurRadius: 10,
        ),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Enter your email",
        hintStyle: TextStyle(color: Colors.grey),
        border: InputBorder.none,
      ),
    ),
  );
}
