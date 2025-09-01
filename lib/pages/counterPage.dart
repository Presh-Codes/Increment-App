import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {

  int _counter = 0;

  void _incrementer () {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Increment App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You've pushed the button",
              style: TextStyle(
                fontSize: 25,
                fontFamily: "Calibri",
              ),
            ),

            Text(
              "$_counter",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                fontFamily: "Calibri",
              ),
            ),

            Text(
              "Times",
              style: TextStyle(
                fontSize: 25,
                fontFamily: "Calibri",
              ),
            ),

            ElevatedButton(
              onPressed: _incrementer,

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: CircleBorder(),
                padding: EdgeInsets.all(25),
              ),

              child: Text(
                "+",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Calibri",
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}