import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Practise",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  
//  void _something(){
//
//  }
  
  
  bool pressAttention= false;
  String mytext="Vampire";
  
  void changeTextnColor(){
    setState(() {
//      if(mytext=='Vampire'){
//        if(pressAttention=false){
//          pressAttention=true;
//          mytext="Wolf";
//        }
//      }else{
//        mytext="Vampire";
//        pressAttention=false;
//      }
      if (pressAttention == false) {
        pressAttention = true;
        mytext = "Wolf";
      } else {
        pressAttention = false;
        mytext = "Vampire";
      }
    });
  }
  
  
  Widget _bodyWidget(){
    return new Container(
      color: pressAttention?Colors.blueGrey:Colors.brown,
        padding: const EdgeInsets.all(4.0),
        child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new ButtonTheme(
                  minWidth: 200.0,
                  height: 100.0,
                  child: new RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                            width: 1,
                            color: pressAttention?Colors.indigo:Colors.black
                        )
                    ),
                    child: new Text(mytext, style: new TextStyle(
                        color: Colors.white,
                      fontSize: 30.0
                    ),),
                    color: pressAttention?Colors.amber:Colors.red,
                    onPressed: changeTextnColor,
                  )
                )
              ],
            )
        )
    );
    
  }
  
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Blah blleh"),
        backgroundColor: pressAttention?Colors.lightGreenAccent:Colors.pink,
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.deepPurple,
        child: new Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}

