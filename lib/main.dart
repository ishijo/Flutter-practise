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
  
  String mytext="Hello world";
  
  void _changeText(){
    setState(() {
      if(mytext.startsWith('H')){
        mytext="this";
      }else{
        mytext="Hello World";
      }
    });
  }
  
  
  Widget _bodyWidget(){
    return new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Center(
            child: new Column(
              children: <Widget>[
                new Text(mytext),
                new RaisedButton(
                  child: new Text("Random"),
                  onPressed: _changeText,
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
      ),
      body: _bodyWidget()
    );
  }
}

