import 'package:flutter/material.dart';
import 'package:missai/test.dart';
import 'pdfgen.dart';
import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as prefix0;
String papername,examname,insti,con;
int noof;
class que extends StatefulWidget{
  @override
  Que createState ()=> Que();
}
void save(){
  final File file = File('/storage/emulated/0/example1.pdf');
  file.writeAsBytesSync(pdf.save());
}
class Que extends State<que>{

  static const menu =<int>[
  10,20,30,40,50,60,70,80,90,100
];
final List<DropdownMenuItem<int>> _menus = menu.map(
  (int value) => DropdownMenuItem<int>(
  value: value,
  child: Text('$value'),
)
).toList();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Design Your Paper',style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 30),
          child: Container(
            child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Institute Name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.blue,width: 4)
                  ),
                ),

                onChanged: (value){
                  insti = value;
                }
            ),
          ),
          ),
          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 30),
            child: Container(
              child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Exam Name',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue,width: 4)
                    ),
                  ),

                  onChanged: (value){
                    examname = value;
                  }
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 30),
            child: Container(
              child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Subject Name',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue,width: 4)
                    ),
                  ),

                  onChanged: (value){
                    papername = value;
                  }
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 30),
            child: Container(
              child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Conducted By',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue,width: 4)
                    ),
                  ),

                  onChanged: (value){
                    con = value;
                  }
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              trailing:DropdownButton(
                hint: Text('Choose No Of Questions                                     '),
                items: _menus,
                value: noof,
                onChanged: (int value){
                  setState(() {
                    noof = value;
                    print('$noof');
                  });
                },

              )
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: FlatButton(
              child: Text('Next'),
              onPressed: (){add();
              save();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>test()));

              },
            ),
          ),

        ],

      ),
    );
  }
}