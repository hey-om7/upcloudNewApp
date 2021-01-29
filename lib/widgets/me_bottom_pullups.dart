import 'package:flutter/material.dart';
import 'me.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:upcloud_profile_page/widgets/relations.dart';

Container emergencyContactNames(String name, String number) {
  return Container(
    margin: EdgeInsets.fromLTRB(44, 26, 44, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$name',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        Text(
          '$number',
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
        ),
      ],
    ),
  );
}

dynamic statesIndia = [
  'Andhra Pradesh',
  'Arunachal Pradesh',
  'Assam',
  'Bihar',
  'Chhattisgarh',
  'Goa',
  'Gujarat',
  'Haryana',
  'Himachal Pradesh',
  'Jammu & Kashmir',
  'Jharkhand',
  'Karnataka',
  'Kerala',
  'Madhya Pradesh',
  'Maharashtra',
  'Manipur',
  'Meghalaya',
  'Mizoram',
  'Nagaland',
  'Odisha (Orissa)',
  'Punjab',
  'Rajasthan',
  'Sikkim',
  'Tamil Nadu',
  'Telangana',
  'Tripura',
  'Uttar Pradesh',
  'Uttarakhand',
  'West Bengal'
];
dynamic statesIndiaSearch = [];

Future stateBottomPullup(BuildContext context) {
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
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Column(
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
                      Container(
                          margin: EdgeInsets.fromLTRB(44, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'State',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                  StatefulBuilder(builder: (context, StateSetter setState1){
                            return Column(
                              children: [
                                Container(
                        margin: EdgeInsets.fromLTRB(44, 36, 44, 31),
                        child: TextField(
                          onChanged: (changedText) {
                                if (changedText.isNotEmpty) {
                                  statesIndiaSearch = [];
                                  // statesIndiaSearch = statesIndia;
                                  for (int i1 = 0; i1 < statesIndia.length; i1++) {
                                    if (statesIndia[i1]
                                        .toString()
                                        .toLowerCase()
                                        .contains(changedText.toLowerCase())) {
                                      statesIndiaSearch.add(statesIndia[i1]);
                                      // print('added $statesIndia[i1]');
                                    } else {
                                      // statesIndiaSearch.remove(statesIndia[i1]);
                                    }
                                  }
                                  print(statesIndiaSearch);
                                  //update the list to actual list at this spot
                                } else {
                                  statesIndiaSearch = statesIndia;
                                }
                          },
                          decoration: InputDecoration(
                                  // icon: Icon(Icons.search),
                                  labelText: 'Search States',
                                  labelStyle: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )),
                        ),
                      ),
                      //         Expanded(
                      //   child: Container(
                      //     // child: ListView(
                      //     //   children: [
                      //     //     Text('Done'),
                      //     //     // ...List.generate(
                      //     //     //   statesIndia.length,
                      //     //     //   (index) {
                      //     //     //     return Container(
                      //     //     //         margin:
                      //     //     //             EdgeInsets.fromLTRB(44, 15, 0, 15),
                      //     //     //         child: Text(
                      //     //     //           statesIndia[index],
                      //     //     //           style: TextStyle(
                      //     //     //               fontWeight: FontWeight.w500,
                      //     //     //               fontSize: 15),
                      //     //     //         ));
                      //     //     //   },
                      //     //     // )
                      //     //   ],
                      //     // ),
                      //   ),
                      // ),

                              
                              
                              ],
                            );
 
                          }),
                                                               ],
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

Future emergencyBottomPullup(BuildContext context) {
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
              child: Stack(
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
                      Container(
                          margin: EdgeInsets.fromLTRB(44, 0, 44, 0),
                          child: Text(
                            'Emergency Contact',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(44, 36, 44, 31),
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Search Contacts',
                              labelStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                      emergencyContactNames("Ashay Shirswade", "9739473927"),
                      emergencyContactNames("Jane Cooper", "7382647594"),
                      emergencyContactNames("Ronald Richards", "62876825826"),
                      emergencyContactNames("ABC", "9739473927"),
                      emergencyContactNames("Ashay Shirswade", "7382647594")
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
}
