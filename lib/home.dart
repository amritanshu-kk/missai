import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:missai/questions.dart';
import 'package:missai/splash.dart';

class home extends StatefulWidget{
  @override
  Home createState()=>Home();
}
class Home extends State<home>{
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: height*0.15,
              width: width,
              color: Colors.blue,
              child: Row(
                children: <Widget>[Padding(padding: EdgeInsets.only(left: 30,top: 20),
                child: Text('MissAI' , style: TextStyle(fontSize: 40, color: Colors.white),),
                ),],
              )
            ),
            Container(
              height: height*0.85,
              width: width,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(height: height*0.25,),

                    Container(
                      height : height *0.15,
                      width: width*0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white,
                        border: Border.all(color: Colors.blue,width:5),
                      ),
                      child: FlatButton(
                        child: Text('Generate Paper',style: TextStyle(fontSize: 20),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>que()));

                        },
                      ),
                    ),
                    Container(height: height*0.03),
                    Container(
                      height : height *0.15,
                      width: width*0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white,
                        border: Border.all(color: Colors.blue,width:5),
                      ),
                      child: FlatButton(
                        child: Text('Check Question Paper',style: TextStyle(fontSize: 17),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>splash()));

                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}