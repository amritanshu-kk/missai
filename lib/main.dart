import 'package:flutter/material.dart';
import 'package:missai/home.dart' as prefix0;
import 'splash.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: prefix0.home(),
      debugShowCheckedModeBanner: false,
    );
  }
}