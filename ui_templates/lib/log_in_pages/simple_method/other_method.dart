import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 4),
                      blurRadius: 6,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage("assets/logos/facebook.png"),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 6,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage("assets/logos/google.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
