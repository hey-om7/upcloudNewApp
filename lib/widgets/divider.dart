import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 31, right: 0, bottom: 15),
      child: SizedBox(
        height: 5,
        child: Divider(
          color: Color(0xffcc9b66),
          thickness: 1,
          endIndent: 40,
        ),
      ),
    );
  }
}
