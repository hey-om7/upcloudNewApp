import 'package:flutter/material.dart';
import 'divider.dart';
import 'me_bottom_pullups.dart';

Padding listItem_me(mainhead, subtype, [BuildContext context]) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
    child: InkWell(
      onTap: () {
        if (mainhead == 'Emergency Contact') {
          emergencyBottomPullup(context);
        } else if (mainhead == 'State') {
          stateBottomPullup(context);
        } else {
          newShowModalBottomSheet(context);
        }
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '$mainhead : ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          Expanded(
            child: Text(
              '$subtype',
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    ),
  );
}

class MeLists extends StatefulWidget {
  @override
  _MeListsState createState() => _MeListsState();
}

class _MeListsState extends State<MeLists> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      child: Form(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            listItem_me('Contacts', '', context),
            CustomDivider(),
            listItem_me('Emergency Contact', '', context),
            CustomDivider(),
            listItem_me('Email', 'moharora8@gmail.com', context),
            CustomDivider(),
            listItem_me('D.O.B', '13/12/2001', context),
            CustomDivider(),
            listItem_me('Status', 'Mostly Active', context),
            CustomDivider(),
            listItem_me('State', 'Maharashtra', context),
            CustomDivider(),
          ],
        ),
      ),
    );
  }
}

class Me extends StatefulWidget {
  @override
  _MeState createState() => _MeState();
}

class _MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return MeLists();
  }
}
