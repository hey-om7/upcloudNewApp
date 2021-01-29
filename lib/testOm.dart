import 'package:flutter/material.dart';

dynamic listDynamic = [
  'list ek',
  'list don',
  'list teen',
  'list char',
  'list paach'
];

dynamic listTrueFalse = [false, false, true, false, false];

class TestStatelessOm extends StatelessWidget {
  String abc = 'xyz';
  String text = 'text goes here';
  int indexSelected = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: StatefulBuilder(
      builder: (context, StateSetter setState1) {
        return Column(
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    ...List.generate(5, (index) {
                      return InkWell(
                        onTap: () {
                          setState1(() {
                            if (indexSelected != index) {
                              indexSelected = index;
                              listTrueFalse[index] = !listTrueFalse[index];
                              for (int i = 0; i < listTrueFalse.length; i++) {
                                if (index != i) {
                                  listTrueFalse[i] = false;
                                }
                              }
                            }
                          });
                        },
                        child: ListTile(
                          title: Text(listDynamic[index]),
                          trailing: listTrueFalse[index]
                              ? Icon(Icons.check, color: Colors.orange)
                              : Icon(null),
                        ),
                      );
                    }),
                    Text(text),
                    RaisedButton(onPressed: () {
                      setState1(() {
                        text = listDynamic[indexSelected];
                      });
                    }),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    )));
  }
}
