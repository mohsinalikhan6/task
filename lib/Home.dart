import 'package:task/todo.dart';
import 'package:task/calculator.dart';
import 'package:flutter/material.dart';
import 'Screen.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculator()));
                  }, child: Text("Calculator",style: TextStyle(fontSize: 30),)),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Task()));
                  }, child: Text("Screen",style: TextStyle(fontSize: 30))),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Todo()));
                  }, child: Text("Todo",style: TextStyle(fontSize: 30))),
                ],
        ),
      ),
      
    );
  }
}
