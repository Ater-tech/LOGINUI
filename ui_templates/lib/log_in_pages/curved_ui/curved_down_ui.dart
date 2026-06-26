import 'package:flutter/material.dart';

class CurvedDownUi extends StatefulWidget{
  const CurvedDownUi({super.key});

  @override
  State<CurvedDownUi> createState() => _MyUIState();
}

class _MyUIState extends State<CurvedDownUi>{
  @override
  Widget build(BuildContext context){
  final height = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(          
          gradient: LinearGradient(colors: [
            Colors.orange.shade800,
            Colors.orange.shade700,
            Colors.orange.shade600,
            Colors.orange.shade500,
          ],
          stops: [0.1, 0.4, 0.7, 0.9],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          )
        ),
      child: Column(
        children: [
            Padding(padding: EdgeInsetsGeometry.only(
              top: height*0.15, 
              left: width*0.02, 
              bottom: height*0.07),
              child: Column(
                children: [
                  Text(
                    "Login", 
                    style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.bold, 
                      fontSize: 32),
                      ), 
                  Text("Welcome Back"),
                  ],
              ),
              ),
          SingleChildScrollView(
            child: Container(
              height: height*0.6,
              color: const Color(0xFFFFF8E7) // Cream,
            ),
          ),
        ],
      ),
      ),
    );
  }
}