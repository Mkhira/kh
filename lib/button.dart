import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({this.pressed, this.ButtonName});
  final Function pressed;
  final String ButtonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            pressed();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            ButtonName,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
