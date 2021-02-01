import 'package:flutter/material.dart';
import 'divider.dart';
import 'i_lists.dart';

Padding listItem_i(mainhead, subtype, [BuildContext context]) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
    child: InkWell(
      onTap: () {
        if (mainhead == 'Drinking') {
          print('Drinking Selected!');
          drinkingBottomPopup(context);
        } else if (mainhead == 'Smoking') {
          smokingBottomPullup(context);
        } else if (mainhead == 'Chewing Tobacco') {
          chewingTobaccoBottomPullup(context);
        } else if (mainhead == 'Lifestyle') {
          lifeStyleBottomPullup(context);
        } else if (mainhead == 'Food Preference') {
          foodPrefrenceBottomPullup(context);
        } else if (mainhead == 'State') {
          print('hello');
          // newShowModalBottomSheet(context);
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

class ILists extends StatefulWidget {
  @override
  _IListsState createState() => _IListsState();
}

class _IListsState extends State<ILists> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      child: Form(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            listItem_i('Drinking', '', context),
            CustomDivider(),
            listItem_i('Smoking', '', context),
            CustomDivider(),
            listItem_i('Chewing Tobacco', '', context),
            CustomDivider(),
            listItem_i('Lifestyle', '', context),
            CustomDivider(),
            listItem_i('Food Preference', '', context),
            CustomDivider(),
            // listItem_i('Heridatory diseases', 'Penicillin, Serum B', context),
            // CustomDivider(),
          ],
        ),
      ),
    );
  }
}

class I extends StatefulWidget {
  @override
  _IState createState() => _IState();
}

class _IState extends State<I> {
  @override
  Widget build(BuildContext context) {
    return ILists();
  }
}
