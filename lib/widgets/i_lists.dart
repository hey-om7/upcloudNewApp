import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:upcloud_profile_page/widgets/relations.dart';

import 'i.dart';
import 'package:flutter/material.dart';

Container newItemList(context, text) {
  return Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(44, 10, 44, 0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Text(
            "$text",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Spacer(),
          Icon(Icons.check)
        ],
      ));
}

Future foodPrefrenceBottomPullup(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      )),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.73,
          expand: false,
          builder: (_, controller) {
            return Container(
              //margin: EdgeInsets.fromLTRB(30, 55, 30, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
              )),
              //color: Colors.blue[500],
              child: Stack(
                // alignment: Alignment.bottomCenter,
                fit: StackFit.loose,
                children: [
                  ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            (MediaQuery.of(context).size.width - 46) / 2,
                            14,
                            (MediaQuery.of(context).size.width - 46) / 2,
                            0),
                        //alignment: Alignment.center,
                        height: 4,
                        //width: 46,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(35, 3, 30, 12),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Spacer(),
                                Text('Done',
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Color.fromRGBO(45, 138, 224, 1),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 150),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "Oily"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, 'Moderate'),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, 'Oil Free'),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "Athelete (Very High)"),
                      ),
                      CustomDivider(),
                    ],
                    controller: controller,
                  ),
                  Positioned(
                    bottom: 0,
                    child: BlurryContainer(
                      height: 100,
                      bgColor: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(48, 0, 48, 0),
                              child: CustomDivider()),
                          Container(
                              margin: EdgeInsets.fromLTRB(78, 0, 48, 0),
                              child: Row(
                                children: [
                                  FlutterLogo(
                                    size: 33,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Powered by',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "With Doc's",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      });
}

Future lifeStyleBottomPullup(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      )),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.73,
          expand: false,
          builder: (_, controller) {
            return Container(
              //margin: EdgeInsets.fromLTRB(30, 55, 30, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
              )),
              //color: Colors.blue[500],
              child: Stack(
                // alignment: Alignment.bottomCenter,
                fit: StackFit.loose,
                children: [
                  ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            (MediaQuery.of(context).size.width - 46) / 2,
                            14,
                            (MediaQuery.of(context).size.width - 46) / 2,
                            0),
                        //alignment: Alignment.center,
                        height: 4,
                        //width: 46,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(35, 3, 30, 12),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Spacer(),
                                Text('Done',
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Color.fromRGBO(45, 138, 224, 1),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 150),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "Sendetary (Low)"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, 'Moderate (Normal)'),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, 'Active (High)'),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "Athelete (Very High)"),
                      ),
                      CustomDivider(),
                    ],
                    controller: controller,
                  ),
                  Positioned(
                    bottom: 0,
                    child: BlurryContainer(
                      height: 100,
                      bgColor: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(48, 0, 48, 0),
                              child: CustomDivider()),
                          Container(
                              margin: EdgeInsets.fromLTRB(78, 0, 48, 0),
                              child: Row(
                                children: [
                                  FlutterLogo(
                                    size: 33,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Powered by',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "With Doc's",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      });
}

Future chewingTobaccoBottomPullup(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      )),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.73,
          expand: false,
          builder: (_, controller) {
            return Container(
              //margin: EdgeInsets.fromLTRB(30, 55, 30, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
              )),
              //color: Colors.blue[500],
              child: Stack(
                // alignment: Alignment.bottomCenter,
                fit: StackFit.loose,
                children: [
                  ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            (MediaQuery.of(context).size.width - 46) / 2,
                            14,
                            (MediaQuery.of(context).size.width - 46) / 2,
                            0),
                        //alignment: Alignment.center,
                        height: 4,
                        //width: 46,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(35, 3, 30, 12),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Spacer(),
                                Text('Done',
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Color.fromRGBO(45, 138, 224, 1),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 150),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I don't tobacco"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, 'I have tried'),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, 'I tobacco occassionally'),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I tobacco 1-3/day"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I somke 3-7/day"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I somke 7-10/day"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I smoke a pack/day"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I smoke regularly"),
                      ),
                      CustomDivider(),
                    ],
                    controller: controller,
                  ),
                  Positioned(
                    bottom: 0,
                    child: BlurryContainer(
                      height: 100,
                      bgColor: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(48, 0, 48, 0),
                              child: CustomDivider()),
                          Container(
                              margin: EdgeInsets.fromLTRB(78, 0, 48, 0),
                              child: Row(
                                children: [
                                  FlutterLogo(
                                    size: 33,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Powered by',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "With Doc's",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      });
}

class SmokingBottomPullupStateful extends StatefulWidget {
  final context;
  SmokingBottomPullupStateful(this.context);
  @override
  _SmokingBottomPullupStatefulState createState() =>
      _SmokingBottomPullupStatefulState();
}

class _SmokingBottomPullupStatefulState
    extends State<SmokingBottomPullupStateful> {
  @override
  Widget build(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      )),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.73,
          expand: false,
          builder: (_, controller) {
            return Container(
              //margin: EdgeInsets.fromLTRB(30, 55, 30, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
              )),
              //color: Colors.blue[500],
              child: Stack(
                // alignment: Alignment.bottomCenter,
                fit: StackFit.loose,
                children: [
                  ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            (MediaQuery.of(context).size.width - 46) / 2,
                            14,
                            (MediaQuery.of(context).size.width - 46) / 2,
                            0),
                        //alignment: Alignment.center,
                        height: 4,
                        //width: 46,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(35, 3, 30, 12),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Spacer(),
                                Text('Done',
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Color.fromRGBO(45, 138, 224, 1),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 150),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I don't smoke"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, 'I have tried'),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, 'I smoke occassionally'),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I somke 1-3/day"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I somke 3-7/day"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I somke 7-10/day"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I smoke a pack/day"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I smoke regularly"),
                      ),
                      CustomDivider(),
                    ],
                    controller: controller,
                  ),
                  Positioned(
                    bottom: 0,
                    child: BlurryContainer(
                      height: 100,
                      bgColor: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(48, 0, 48, 0),
                              child: CustomDivider()),
                          Container(
                              margin: EdgeInsets.fromLTRB(78, 0, 48, 0),
                              child: Row(
                                children: [
                                  FlutterLogo(
                                    size: 33,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Powered by',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "With Doc's",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      });

  }
}

// Future smokingBottomPullup(BuildContext context) {
//   return }

Future drinkingBottomPopup(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      )),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.73,
          expand: false,
          builder: (_, controller) {
            return Container(
              //margin: EdgeInsets.fromLTRB(30, 55, 30, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
              )),
              //color: Colors.blue[500],
              child: Stack(
                // alignment: Alignment.bottomCenter,
                fit: StackFit.loose,
                children: [
                  ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            (MediaQuery.of(context).size.width - 46) / 2,
                            14,
                            (MediaQuery.of(context).size.width - 46) / 2,
                            0),
                        //alignment: Alignment.center,
                        height: 4,
                        //width: 46,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(35, 3, 30, 12),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Spacer(),
                                Text('Done',
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Color.fromRGBO(45, 138, 224, 1),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 150),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I don't drink"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, 'I have tried'),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, 'I drink sometimes'),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I drink occassionally"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I drink regularly"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I drink regularly"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I drink regularly"),
                      ),
                      CustomDivider(),
                      InkWell(
                        onTap: () {
                          print('tapped!');
                        },
                        child: newItemList(context, "I drink regularly"),
                      ),
                      CustomDivider(),
                    ],
                    controller: controller,
                  ),
                  Positioned(
                    bottom: 0,
                    child: BlurryContainer(
                      height: 100,
                      bgColor: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(48, 0, 48, 0),
                              child: CustomDivider()),
                          Container(
                              margin: EdgeInsets.fromLTRB(78, 0, 48, 0),
                              child: Row(
                                children: [
                                  FlutterLogo(
                                    size: 33,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Powered by',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "With Doc's",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      });
}

Future newShowModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      //enableDrag: false,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      )),
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true, // set this to true
      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.73,
          expand: false,
          builder: (_, controller) {
            return Container(
              //margin: EdgeInsets.fromLTRB(30, 55, 30, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
              )),
              //color: Colors.blue[500],
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        (MediaQuery.of(context).size.width - 46) / 2,
                        14,
                        (MediaQuery.of(context).size.width - 46) / 2,
                        0),
                    //alignment: Alignment.center,
                    height: 4,
                    //width: 46,
                    color: Colors.black,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(35, 3, 30, 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Edit',
                                //textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(45, 138, 224, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                            Spacer(),
                            Text('Done',
                                //textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color.fromRGBO(45, 138, 224, 1),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(44, 36, 44, 31),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Search name',
                          labelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(44, 0, 0, 23),
                    child: Text(
                      'Allergies',
                      //'Low Sex Drive',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffE3B287),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(44, 0, 44, 0),
                    child: Text(
                      //'${gridItem.description}',
                      'Low Sex Drive ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv ow Sex Driv',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
                controller: controller,
              ),
            );
          },
        );
      });
}
