import 'package:flutter/material.dart';
import 'package:rounded_modal/rounded_modal.dart';

int currentpage = 0;
dynamic drinking = {
  'I don’t drink': false,
  'I have tried': false,
  'I drink sometimes': false,
  'I drink occasionally': false,
  'I drink regularly': false,
};

dynamic a = [
  'I don’t drink',
  'I have tried',
  'I drink sometimes',
  'I drink occasionally',
  'I drink regularly',
];
dynamic b = [
  false,
  false,
  false,
  false,
  false,
];

dynamic c = [];
dynamic s1 = [
  'I don’t smoke',
  'I have tried',
  'I smoke occasionally',
  'I smoke 1-3 /day',
  'I smoke 3-7 / day',
  'I smoke 7-10 / day',
  'I smoke a pack / day',
];
dynamic s2 = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

dynamic s3 = [];
dynamic t1 = [
  'I don’t smoke',
  'I have tried',
  'I smoke occasionally',
  'I smoke 1-3 /day',
  'I smoke 3-7 / day',
  'I smoke 7-10 / day',
  'I smoke a pack / day',
];
dynamic t2 = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

dynamic t3 = [];
dynamic l1 = [
  'Sedentary (Low)',
  'Moderate (Normal)',
  'Active (High)',
  'Athelete (Very High)',
  'I drink regularly',
];
dynamic l2 = [
  false,
  false,
  false,
  false,
  false,
];
List<dynamic> data = new List<dynamic>(8);

dynamic l3 = [];
dynamic p1 = [
  'I Prefer jain',
  'Vegan',
  'Vegeterian',
  'Eggiterian',
  'Non-vegeterian',
];
dynamic p2 = [
  false,
  false,
  false,
  false,
  false,
];
dynamic p3 = [];

void demo(BuildContext context, a, b) {
  // st = false;
  showRoundedModalBottomSheet(
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.white
          : Colors.black,
      context: context,
      radius: 50, // set this to true
      builder: (context) {
        return StatefulBuilder(builder: (context, StateSetter setState2) {
          return Container(
            child: ListView(
              children: [
                ...List.generate(
                  5,
                  (index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          onTap: () {
                            setState2(() {
                              b[index] = !b[index];
                            });
                          },
                          title: Text(a[index]),
                          trailing: b[index] ? Icon(Icons.check) : Icon(null),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        });
      });
}


