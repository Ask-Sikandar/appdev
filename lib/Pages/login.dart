import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: <Widget>[
          const SizedBox(height: 80.0),
          Column(
            children: <Widget>[
              SizedBox(
                  width: 100.0,
                  child: Image.asset('assets/diamond.png')),
              const SizedBox(height: 100.0),
              const Text('Shrine'),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Username',
                ),
              ),
              const SizedBox(height: 12.0),
              const TextField(
                decoration:
                    InputDecoration(filled: true, labelText: 'Password'),
                obscureText: true,
              ),
              OverflowBar(
                alignment: MainAxisAlignment.end,
                // TODO: Add a beveled rectangular border to CANCEL (103)
                children: <Widget>[
                  TextButton(
                    child: const Text('CANCEL'),
                    onPressed: () {
                      // TODO: Clear the text fields (101)
                    },
                  ),
                  // TODO: Add an elevation to NEXT (103)
                  // TODO: Add a beveled rectangular border to NEXT (103)
                  ElevatedButton(
                    child: const Text('NEXT'),
                    onPressed: () {
                      // TODO: Show the next page (101)
                    },
                  ),
                  // TODO: Add buttons (101)
                ],
              ),
            ],
          ),
          const SizedBox(height: 120.0),
        ],
      ),
    ));
  }
}
