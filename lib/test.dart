import 'package:flutter/cupertino.dart';
import 'questions.dart';
import 'package:flutter/material.dart';
class test extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final  pageController =PageController();
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemBuilder: (context, position) {
        void next(){
          pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn);
        }
        int a = position+1;
        if (position != noof){
          return SingleChildScrollView(
            child: Container(
              height: height,
              width: width,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: height*0.06),
                    child: Text('Queston Number: $a',style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: height*0.06,bottom: 20),
                      child: Container(
                        width: width*0.9,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Enter Question:',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  )
                              )

                          ),
                          maxLines: 10,

                        ),
                      )
                  ),
                  Container(
                      height: height*0.2,
                      width: width*0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: width*0.4,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Option 1:',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      )
                                  )

                              ),


                            ),
                          ),
                          Container(
                            width: width*0.4,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Option 2:',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      )
                                  )

                              ),

                            ),
                          )



                        ],
                      )
                  ),
                  Container(

                      width: width*0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: width*0.4,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Option 3:',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      )
                                  )

                              ),


                            ),
                          ),
                          Container(
                            width: width*0.4,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Option 4:',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      )
                                  )

                              ),

                            ),
                          )



                        ],
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height*0.1),
                    child: Container(
                      width: width*0.8,
                      height: height*0.1,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Center(
                          child: FlatButton(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            onPressed: next,
                          )
                      ),

                    ),
                  )

                ],
              ),
            ),
          );}
        else{
          return Container(
            color: Colors.blue,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: height*0.5,
                  ),
                  Text(
                    'Press the Icon to Generate PDF',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height*0.02)
                    ,
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: FlatButton(
                          child: Icon(Icons.arrow_forward),
                          onPressed: (){},
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ) ,
          );
        }

    },
        itemCount: noof+1,
        scrollDirection: Axis.vertical,

      ),
    );
  }
}