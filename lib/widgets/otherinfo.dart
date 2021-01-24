import 'package:flutter/material.dart';
// import '../globals.dart' as globals;

class OtherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Gauri Kannukar',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.black)),
          Row(
            children: [
              Text(
                'F/',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Text(
                ' 23 ',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                    color: Colors.black),
              ),
              Text(
                'Single',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              )
            ],
          ),
          Text(
            'Pune',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w100, color: Colors.black),
          )
        ],
      ),
    );
  }
}
