import 'package:flutter/material.dart';
import 'package:ui_templates/log_in_pages/log_in_page_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.orangeAccent.shade100,
              Colors.orangeAccent.shade200,
              Colors.orangeAccent.shade400,
              Colors.orangeAccent.shade700,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            right: width * 0.08,
            left: width * 0.08,
            top: height * 0.2,
            bottom: height * 0.15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [logInPages(height, context)],
          ),
        ),
      ),
    );
  }
}
