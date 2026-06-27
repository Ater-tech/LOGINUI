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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Flexible(
              flex: 3,
              child: Padding(
                padding: EdgeInsetsGeometry.only(
                top: height*0.12,
                left: width*0.07,      
                bottom: height*0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,                  
                  children: [
                    Text(
                      "Login", 
                      style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold, 
                        fontSize: 32),
                        ), 
                    Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ],
                ),
                ),
            ),
          Flexible(
            flex: 7,
            child: SingleChildScrollView(
              child: Container(
                height: height*0.7,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF8E7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(height*0.07), 
                    topRight: Radius.circular(height*0.07)),
                ), // Cream,
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}