import 'package:flutter/material.dart';
import 'package:newsapp/firstscreen.dart';
import 'package:newsapp/fourthscreen.dart';
import 'package:newsapp/secondscreen.dart';
import 'package:newsapp/thirdscreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstscreen(),
    );
  }
}

