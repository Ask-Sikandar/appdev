import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator>{
  var result = '0';
  var userInput = '';

  void evaluate(String op){
    Parser parser = Parser();
    Expression e = parser.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = e.evaluate(EvaluationType.REAL, contextModel);
    setState(() {
      result = eval.toString();
    });
  }

  void buttonPress(String text){
    setState(() {
      if(text == 'AC'){
        userInput = '';
        result = '0';
      }
      else {
        userInput += text;
      }
    });
  }

  Widget makeButton(String buttonText){
    return RawMaterialButton(
        onPressed: () {
          buttonPress(buttonText);
        },
      elevation: 2.0,
      fillColor: getBColor(buttonText),

      padding: const EdgeInsets.all(20.0),
      shape: const CircleBorder(),
      child: Text(
        buttonText,
        style: TextStyle(
          color: getTextColor(buttonText),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  Widget equalSign(){
    return RawMaterialButton(
      onPressed: () {
        evaluate(userInput);
      },
      elevation: 2.0,
      fillColor: getBColor('='),

      padding: const EdgeInsets.all(20.0),
      shape: const CircleBorder(),
      child: Text(
        '=',
        style: TextStyle(
          color: getTextColor('='),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: 270,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        userInput,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                      )
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      result,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 36,
                        ),
                      ),
                  ),
                  ],
                ),
              ),
              Expanded(
                flex: 65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        makeButton("AC"),
                        makeButton("+/-"),
                        makeButton("%"),
                        makeButton('/')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        makeButton("7"),
                        makeButton("8"),
                        makeButton("9"),
                        makeButton('*')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        makeButton("4"),
                        makeButton("5"),
                        makeButton("6"),
                        makeButton('-'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        makeButton("1"),
                        makeButton("2"),
                        makeButton("3"),
                        makeButton('+'),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          makeButton('()'),
                          RawMaterialButton(
                            onPressed: () {
                              userInput += '0';
                            },
                            elevation: 2.0,
                            fillColor: Colors.white10,
                            padding: const EdgeInsets.all(20.0),
                            shape: const CircleBorder(),
                            child: Text(
                              '0',
                              style: TextStyle(
                                color: getTextColor('0'),
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          makeButton('.'),
                          equalSign(),
                      ]
                    )

                  ],
                ),
              ),],
          ),
        )
      ),
    );
  }
  Color getTextColor(String buttonText) {
    var grays = ['AC', '+/-', 'CE', '%'];
    for (var item in grays){
      if (buttonText == item){
        return Colors.black;
      }
    }
    return Colors.white;
  }

  Color getBColor(String buttonText){
    var grays = ['AC', 'CE', '+/-',  '%'];
    var oranges = ['*', '+', '-', '/', '÷', 'x', '='];
    for (var item in grays){
      if (buttonText == item){
        return Colors.white70;
      }
    }
    for (var orange in oranges){
      if (buttonText == orange){
        return Colors.orange;
      }
    }
    return Colors.white10;
  }
}