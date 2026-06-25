import 'package:flutter/material.dart';

class SimpleBlue extends StatefulWidget{
  const SimpleBlue({super.key});

  @override
  State<SimpleBlue> createState()=> _SimpleState();
}

class _SimpleState extends State<SimpleBlue>{
  @override
  Widget build(BuildContext context){
  final height = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.topCenter,        
            colors: [
            Colors.blueAccent.shade100,
            Colors.blueAccent.shade200,
            Colors.blueAccent.shade400,
            Colors.blueAccent.shade700,
          ],         
          stops: [0.1, 0.4, 0.7, 0.9],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            width*0.08, 
            height*0.2, 
            width*0.08, 
            height*0.1, 
          ),
          child: Column(
            children: [
              Text(
                "LOG IN", 
                style: TextStyle(
                  fontFamily: "Black_Ops",
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                  fontSize: 35,
                  color: Colors.white,                 
                  ),
                  ),
              SizedBox(height: height*0.1,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
