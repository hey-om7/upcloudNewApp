import 'package:flutter/material.dart';
import 'divider.dart';
import 'have_bottom_pullups.dart';

Padding listItem_have(mainhead, subtype, [BuildContext context]) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
    child: InkWell(
      onTap: () {
        if (mainhead == "Allergies") {
          allergiesBottomPullup(context);
        } else if (mainhead == "Pain") {
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

class HaveLists extends StatefulWidget {
  @override
  _HaveListsState createState() => _HaveListsState();
}

class _HaveListsState extends State<HaveLists> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      child: Form(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            listItem_have('Pain', 'β-lactam antibiotic', context),
            CustomDivider(),
            listItem_have(
                'Allergies',
                'Anaphylaxis Hemolytic Anemia anti-thymocyte globulin ',
                context),
            CustomDivider(),
            listItem_have('Injuries', 'Left shoulder dislocation', context),
            CustomDivider(),
            listItem_have('Surgeries', 'Arthroscopy', context),
            CustomDivider(),
            listItem_have(
                'Chronic diseases', 'Asthma, Cystic fibrosis', context),
            CustomDivider(),
            listItem_have(
                'Heridatory diseases', 'Penicillin, Serum B', context),
            CustomDivider(),
          ],
        ),
      ),
    );
  }
}

class Have extends StatefulWidget {
  @override
  _HaveState createState() => _HaveState();
}

class _HaveState extends State<Have> {
  @override
  Widget build(BuildContext context) {
    return HaveLists();
  }
}
