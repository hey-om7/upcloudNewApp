import 'package:flutter/material.dart';

class Myself extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 20, color: Colors.black),
        children: <TextSpan>[
          TextSpan(
              text: 'M',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
          TextSpan(
              text: 'y',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
          TextSpan(
              text: 's',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
          TextSpan(
              text: 'e',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow)),
          TextSpan(
              text: 'l',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.green[500])),
          TextSpan(
              text: 'f',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blue[700])),
        ],
      ),
    );
  }
}
