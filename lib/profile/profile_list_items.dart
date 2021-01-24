import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../globals.dart' as globals;
import 'profile.dart';

Padding listItem_have(mainhead, subtype, [BuildContext context]) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
    child: InkWell(
      onTap: () {
        showModalBottomSheet(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Edit',
                                      //textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(45, 138, 224, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                  Spacer(),
                                  Text('Done',
                                      //textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(45, 138, 224, 1),
                                          fontSize: 12,
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

Container addingDividers() {
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

// this is the trial function that I have added . To return the Form Field widget.
Widget buildcontact() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 32.0),
    width: 300.0,
    height: 40.0,
    child: TextFormField(
      decoration: InputDecoration(
          prefix: Text(
            'contact',
            style: TextStyle(fontSize: 13),
          ),
          border: const OutlineInputBorder()),
    ),
  );
}

class ProfileLists extends StatefulWidget {
  @override
  _ProfileListsState createState() => _ProfileListsState();
}

class _ProfileListsState extends State<ProfileLists> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    Padding listItem_Me(mainhead, subtype, [BuildContext context]) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
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
                                  3),
                              //alignment: Alignment.center,
                              height: 4,
                              //width: 46,
                              color: Colors.black,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 3, 30, 12),
                              //height: 4,
                              //alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Done',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Color.fromRGBO(45, 138, 224, 1),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(44, 0, 0, 36),
                              child: Text(
                                'Emmergency Contact',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(44, 0, 0, 20),
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    labelText: 'Search Contact',
                                    labelStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(44, 0, 0, 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aashay Shirswad',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffE3B287),
                                    ),
                                  ),
                                  Text(
                                    '9898989898',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xffE3B287),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(44, 0, 0, 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aashay Shirswad',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffE3B287),
                                    ),
                                  ),
                                  Text(
                                    '9898989898',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xffE3B287),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(44, 0, 0, 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aashay Shirswad',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffE3B287),
                                    ),
                                  ),
                                  Text(
                                    '9898989898',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xffE3B287),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          controller: controller,
                        ),
                      );
                    },
                  );
                });
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
                  style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Padding listItem_state(mainhead, subtype, [BuildContext context]) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
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
                                  3),
                              //alignment: Alignment.center,
                              height: 4,
                              //width: 46,
                              color: Colors.black,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 3, 30, 12),
                              //height: 4,
                              //alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Done',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Color.fromRGBO(45, 138, 224, 1),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(44, 0, 0, 36),
                              child: Text(
                                'State',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(44, 0, 0, 20),
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    labelText: 'Search State',
                                    labelStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(44, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...List.generate(
                                    5,
                                    (innerIndex) {
                                      return Column(
                                        children: [
                                          Text(
                                            'Maharashtra',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              //color: Color(0xffE3B287),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                          controller: controller,
                        ),
                      );
                    },
                  );
                });
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
                  style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return AnimatedContainer(
      duration: Duration(seconds: 1),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            listItem_Me('Contacts', 'Mohit Arora', context),
            addingDividers(),
            listItem_Me('Emergency Contacts',
                'John Doe John Doe John Doe John Doe', context),
            addingDividers(),
            listItem_have('Email', 'gourikannukar', context),
            addingDividers(),
            listItem_have('D.O.B', '13/12/2001', context),
            addingDividers(),
            listItem_have('Status', 'Mostly Active', context),
            addingDividers(),
            listItem_state('State', 'Maharashtra', context),
            addingDividers(),
            listItem_state('City', 'Amravati', context),
            addingDividers(),
            listItem_state('Locality', 'Shankar Nagar', context),
            addingDividers(),
          ],
        ),
      ),
    );
  }
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            listItem_have('Pain', 'β-lactam antibiotic', context),
            addingDividers(),
            listItem_have(
                'Allergies',
                'Anaphylaxis Hemolytic Anemia anti-thymocyte globulin ',
                context),
            addingDividers(),
            listItem_have('Injuries', 'Left shoulder dislocation', context),
            addingDividers(),
            listItem_have('Surgeries', 'Arthroscopy', context),
            addingDividers(),
            listItem_have(
                'Chronic diseases', 'Asthma, Cystic fibrosis', context),
            addingDividers(),
            listItem_have(
                'Heridatory diseases', 'Penicillin, Serum B', context),
            addingDividers(),
          ],
        ),
      ),
    );
  }
}

dynamic drinking = {
  'I don’t drink': false,
  'I have tried': false,
  'I drink sometimes': false,
  'I drink occasionally': false,
  'I drink regularly': false,
};

class ILists extends StatefulWidget {
  @override
  _IListsState createState() => _IListsState();
}

class _IListsState extends State<ILists> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    Padding listItem_I(mainhead, dynamic l,
        [BuildContext context, dynamic list, dynamic list2]) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
                backgroundColor: Colors.white,
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return StatefulBuilder(
                      builder: (context, StateSetter setState2) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.73,
                      expand: false,
                      builder: (_, controller) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(13),
                            topRight: Radius.circular(13),
                          )),
                          child: ListView(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    (MediaQuery.of(context).size.width - 46) /
                                        2,
                                    14,
                                    (MediaQuery.of(context).size.width - 46) /
                                        2,
                                    3),
                                height: 4,
                                color: Colors.black,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 3, 30, 119),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(
                                      context,
                                      // new MaterialPageRoute(
                                      //     builder: (context) =>
                                      //     ProfileSec())
                                    );
                                  },
                                  child: Text('Done',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(45, 138, 224, 1),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: list.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              44, 0, 47, 10),
                                          child: InkWell(
                                            onTap: () {
                                              setState2(() {
                                                list2[index] = !list2[index];
                                                if (list2[index]) {
                                                  if (!l
                                                      .contains(list[index])) {
                                                    l.add(list[index]);
                                                  }
                                                } else {
                                                  if (l.contains(list[index])) {
                                                    l.remove(list[index]);
                                                  }
                                                }
                                                print(list2[index]);
                                                print(index);
                                              });
                                            },
                                            child: Row(
                                              children: [
                                                Text(
                                                  list[index],
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                Spacer(),
                                                list2[index]
                                                    ? Icon(Icons.check,
                                                        color: Colors.black)
                                                    : Icon(null),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              31, 0, 30, 25),
                                          height: 1,
                                          color:
                                              Color.fromRGBO(204, 155, 102, 1),
                                        ),
                                      ],
                                    );
                                  },
                                  controller: controller,
                                ),
                                // }),
                              ),
                              // ),
                            ],
                          ),
                        );
                        // });
                      },
                    );
                  });
                });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '$mainhead : ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
              l.isEmpty
                  ? Text(
                      '',
                      style: TextStyle(fontSize: 13),
                    )
                  : Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ...List.generate(
                            l.length,
                            (innerIndex) {
                              return Text(
                                l[innerIndex],
                                textAlign: TextAlign.left,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      );
    }

    return AnimatedContainer(
      duration: Duration(seconds: 1),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            //globals
            listItem_I('Drinking', globals.c, context, globals.a, globals.b),
            addingDividers(),
            listItem_I('Smoking', globals.s3, context, globals.s1, globals.s2),
            addingDividers(),
            listItem_I(
                'Chewing Tobacco', globals.t3, context, globals.t1, globals.t2),
            addingDividers(),
            listItem_I(
                'Lifestyle', globals.l3, context, globals.l1, globals.l2),
            addingDividers(),
            listItem_I('Food Preferences', globals.p3, context, globals.p1,
                globals.p2),
            addingDividers(),
          ],
        ),
      ),
    );
  }
}
