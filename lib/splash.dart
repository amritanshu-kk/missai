import 'package:flutter/material.dart';
import 'package:missai/home.dart';
class splash extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final double height =MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.blue,
        child: Center(
          child: Text('Miss AI'),
        ),

      ),
    );
  }
}