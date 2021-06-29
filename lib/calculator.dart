import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "";

  Widget btn(var textt) {
    return ElevatedButton(style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey[900],),
      onPressed: () {
        setState(() {
          result = result + textt;
        });
      },
      child: Text(
        textt,
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }

  clear() {
    setState(() {
      result = "";
    });
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 250,
            child: Align(
              alignment: Alignment.topCenter,
                        child: Text(
                result,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              btn("1"),
              btn("2"),
              btn("3"),
              btn("4"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              btn("5"),
              btn("6"),
              btn("7"),
              btn("8"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              btn("9"),
              btn("0"),
              btn("*"),
              btn("/"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              btn("+"),
              btn("-"),
              ElevatedButton(style: ElevatedButton.styleFrom(
              primary: Colors.red[900],),onPressed: clear, child: Text("Clear",style: TextStyle(fontSize: 20),),),
              ElevatedButton(style: ElevatedButton.styleFrom(
              primary: Colors.green[900],),onPressed: output, child: Text("=",style: TextStyle(fontSize: 30),)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ElevatedButton(style: ElevatedButton.styleFrom(
              primary: Colors.yellow[900],
              onPrimary: Colors.black,
            ), onPressed: (){
              Navigator.pop(context);
            }, child: Text("Back to Home",style: TextStyle(fontSize: 30),)),
          )
        ],
      ),
    );
  }
}
