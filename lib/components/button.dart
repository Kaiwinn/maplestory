import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final text;
  final function;

  Button({this.text, this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: GestureDetector(
            onTap: function,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.all(15),
                color: Color.fromARGB(255, 47, 58, 67),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )));
  }
}
