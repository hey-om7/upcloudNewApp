import 'package:flutter/material.dart';
import 'package:rounded_modal/rounded_modal.dart';
import 'sheet.dart';
import 'bottom_navbar.dart';

class CustomDivider2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 0, bottom: 41, top: 8),
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

// ignore: non_constant_identifier_names
Widget listitem(title, [BuildContext context]) {
  Widget custom() {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 0, bottom: 41, top: 8),
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
          TextFormField(
            //  validator: (val){

            //  },
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0),
            decoration: InputDecoration(
              labelText: 'Enter your $title\'s name here',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }

  return InkWell(
    onTap: () {
      showRoundedModalBottomSheet(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : Colors.black,
          context: context,
          radius: 40,
          builder: (context) {
            return StatefulBuilder(builder: (BuildContext context, setState) {
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
                              child: Text('$title',
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
                            input('$title'),
                            custom(),
                            // Text('$title',
                            //     style: TextStyle(
                            //         fontSize: 28, fontWeight: FontWeight.w600)),
                          ],
                        ))
                  ],
                ),
              );
            });
          });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        '$title',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
      ),
    ),
  );
}

// Padding listItem_have(mainhead, subtype, [BuildContext context]) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 30),
//     child: InkWell(
//       onTap: () {
//         showModalBottomSheet(
//             //enableDrag: false,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30),
//               topRight: Radius.circular(30),
//             )),
//             backgroundColor: Colors.white,
//             context: context,
//             isScrollControlled: true, // set this to true
//             builder: (_) {
//               return DraggableScrollableSheet(
//                 initialChildSize: 0.73,
//                 expand: false,
//                 builder: (_, controller) {
//                   return Container(
//                     //margin: EdgeInsets.fromLTRB(30, 55, 30, 10),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(13),
//                       topRight: Radius.circular(13),
//                     )),
//                     //color: Colors.blue[500],
//                     child: ListView(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.fromLTRB(
//                               (MediaQuery.of(context).size.width - 46) / 2,
//                               14,
//                               (MediaQuery.of(context).size.width - 46) / 2,
//                               0),
//                           //alignment: Alignment.center,
//                           height: 4,
//                           //width: 46,
//                           color: Colors.black,
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(35, 3, 30, 12),
//                           child: GestureDetector(
//                             onTap: () {
//                               Navigator.pop(context);
//                             },
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.pop(context);
//                               },
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Text('Edit',
//                                       //textAlign: TextAlign.left,
//                                       style: TextStyle(
//                                           color:
//                                               Color.fromRGBO(45, 138, 224, 1),
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.w500)),
//                                   Spacer(),
//                                   Text('Done',
//                                       //textAlign: TextAlign.right,
//                                       style: TextStyle(
//                                           color:
//                                               Color.fromRGBO(45, 138, 224, 1),
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.w500)),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(44, 16, 44, 31),
//                           child: TextField(
//                             decoration: InputDecoration(
//                                 labelText: 'Search name',
//                                 labelStyle: TextStyle(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.w400,
//                                 )),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(44, 0, 0, 23),
//                           child: Text(
//                             'Allergies',
//                             //'Low Sex Drive',
//                             style: TextStyle(
//                               fontSize: 28,
//                               fontWeight: FontWeight.w500,
//                               color: Color(0xffE3B287),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(44, 0, 44, 0),
//                           child: Text(
//                             //'${gridItem.description}',
//                             'Low Sex Drive ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv',
//                             style: TextStyle(
//                               fontSize: 17,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ),
//                       ],
//                       controller: controller,
//                     ),
//                   );
//                 },
//               );
//             });
//       },
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Text(
//             '$mainhead : ',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
//           ),
//           Expanded(
//             child: Text(
//               '$subtype',
//               style: TextStyle(fontSize: 13),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 31, right: 0, bottom: 16, top: 8),
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

class Relations extends StatefulWidget {
  @override
  _RelationsState createState() => _RelationsState();
}

class _RelationsState extends State<Relations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(30, 72, 144, 19),
                  child: Text(
                    'Relationships',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 65 - 100,
                  child: ListView(
                    children: [
                      Sheet(
                        title: 'Brother',
                      ),
                      //listitem('Brother', context),
                      CustomDivider(),
                      TextFormField(
                        //  validator: (val){

                        //  },
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15.0),
                        decoration: InputDecoration(
                          labelText: 'Enter your name here',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: Colors.transparent,
                        ),
                      ),
                      // listitem('Sister', context),
                      // CustomDivider(),
                      // listitem('Mother', context),
                      // CustomDivider(),
                      // listitem('Father', context),
                      // CustomDivider(),
                      // listitem('Grandmother', context),
                      // CustomDivider(),
                      // listitem('Grandfather', context),
                      // CustomDivider(),
                      // listitem('Son', context),
                      // CustomDivider(),
                      // listitem('Daughter', context),
                      // CustomDivider(),
                      // listitem('Child', context),
                      // CustomDivider(),
                      // listitem('Friend', context),
                      // CustomDivider(),
                      // listitem('Spouse', context),
                      // CustomDivider(),
                      // listitem('Partner', context),
                      // CustomDivider(),
                      // listitem('   Add Custom', context),
                      // CustomDivider(),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 1,
              left: 0,
              right: 0,
              child: BottomNavbar(
                currentIndex: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
