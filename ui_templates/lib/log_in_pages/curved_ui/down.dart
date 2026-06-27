import 'package:flutter/material.dart';
import 'package:ui_templates/log_in_pages/curved_ui/password_field.dart';
import 'email_field.dart';

Flexible down(double height, double width) {
  return Flexible(
    flex: 7,
    child: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.025),
        height: height * 0.7,
        decoration: BoxDecoration(
          color: const Color(0xFFFFF8E7),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(height * 0.07),
            topRight: Radius.circular(height * 0.07),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: height * 0.08),
            emailField(width),
            SizedBox(height: height * 0.02),
            passwordField(width),
            SizedBox(height: height * 0.02),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            loginButton(width, height),
            SizedBox(height: height * 0.04),
            Text(
              "Continue with social media",
              style: TextStyle(color: Colors.grey, fontFamily: 'Momo'),
            ),
            SizedBox(height: height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Momo',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.15),
                Expanded(
                  child: Container(
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "Google",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Momo',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ), // Cream,
      ),
    ),
  );
}

Container loginButton(double width, double height) {
  return Container(
    width: width * 0.8,
    height: height * 0.05,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: Colors.deepOrangeAccent,
    ),
    child: InkWell(
      onTap: () {},
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Momo',
          ),
        ),
      ),
    ),
  );
}
