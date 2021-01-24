import 'package:flutter/material.dart';
import 'package:rounded_modal/rounded_modal.dart';
import 'package:upcloud_profile_page/widgets/relations.dart';

class Sheet extends StatefulWidget {
  String title;
  Sheet({this.title});
  @override
  _SheetState createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  Widget input(String title, [String value]) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title : ',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0),
          ),
          // TextFormField(
          //   //  validator: (val){

          //   //  },
          //   style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0),
          //   decoration: InputDecoration(
          //     labelText: 'Enter your $title\'s name here',
          //     floatingLabelBehavior: FloatingLabelBehavior.never,
          //     fillColor: Colors.transparent,
          //   ),
          // ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showRoundedModalBottomSheet(
            dismissOnTap: false,
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.white
                : Colors.black,
            context: context,
            radius: 40,
            builder: (context) {
              // return StatefulBuilder(builder: (BuildContext context, setState) {
              return Container(
                height: MediaQuery.of(context).size.height * (2 / 3),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(32, 14, 31, 18),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Text('${widget.title}',
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          //Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(41),
                            child: Image.asset('assets/images/Boy.png',
                                height: 100, width: 100),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        color: Colors.red,
                        height: MediaQuery.of(context).size.height * 0.5 - 92,
                        child: ListView(
                          children: [
                            input('Name'),
                            CustomDivider2(),
                          ],
                        ))
                  ],
                ),
              );
              // });
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          '${widget.title}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
      ),
    );
  }
}
