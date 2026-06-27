import 'package:flutter/material.dart';
import 'package:ui_templates/log_in_pages/curved_ui/curved_down_ui.dart';
import 'package:ui_templates/log_in_pages/simple_method/simple_blue.dart';

ExpansionTile logInPages(double height, BuildContext context) {
  return ExpansionTile(
    title: Text(
      "Log in\tPAGES",
      style: TextStyle(
        fontFamily: 'Playwrite',
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontSize: 15,
      ),
    ),
    leading: Icon(Icons.pages),
    children: [
      Card(
        color: Colors.amberAccent,
        margin: EdgeInsets.only(top: height * 0.03),
        child: ListTile(
          title: Text(
            "Oddiy 1 (simple blue-white)",
            style: TextStyle(
              fontFamily: 'Black_Ops',
              fontWeight: FontWeight.w100,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SimpleBlue()),
            );
          },
        ),
      ),
      Card(
        margin: EdgeInsets.only(top: height * 0.03),
        color: Colors.amberAccent,
        child: ListTile(
          title: Text(
            "Oddiy 2 (pastga qayrilgan)",
            style: TextStyle(
              fontFamily: 'Black_Ops',
              fontWeight: FontWeight.w100,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CurvedDownUi()),
            );
          },
        ),
      ),
    ],
  );
}
