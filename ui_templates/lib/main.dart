import 'package:flutter/material.dart';
import 'package:ui_templates/home/home_page.dart';
void main(){
  runApp(UITemplates());
}

class UITemplates extends StatelessWidget{
  const UITemplates({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}