import 'package:flutter/material.dart';


class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator>{
  Widget makeButton(String buttonText){
    return RawMaterialButton(
        onPressed: () {

        },
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
  var result = '';
  var inputUser = '';


  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
              child: TextField(
                controller: TextEditingController,
              ),
            ),
            GridView.count(
              crossAxisCount: 4,
              padding: const EdgeInsets.all(16.0),
              children: [
                makeButton("1"),
                makeButton("2"),
                makeButton("3"),
              ],
            )
          ],
        ),
      )
    );
  }
}