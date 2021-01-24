import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:local_auth/local_auth.dart';


class TestDel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Container(
              //padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600],
                    //offset: Offset(-1, 6.0),
                    blurRadius: 6.0,
                    spreadRadius: 3,
                  )
                ],
              ),
              // color: Colors.red,
              child: CircleAvatar(

                radius: 75,
                backgroundColor: Color(0xffFDCF09),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/Boy.png'),
                ),
              ),
            ),
          )
      ),
    );
  }
}