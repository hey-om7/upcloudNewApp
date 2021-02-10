import 'package:flutter/material.dart';
import 'package:upcloud_profile_page/widgets/divider.dart';

class RelationShip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: RelationShipStateful()),
    );
  }
}

class RelationShipStateful extends StatefulWidget {
  @override
  _RelationShipStatefulState createState() => _RelationShipStatefulState();
}

dynamic relationsNames = [
  "Brother",
  "Sister",
  "Mother",
  "Father",
  "Grandmother",
  "Son",
  "Daughter",
  "Child",
  "Friend",
  "Spouse",
  "Partner"
];

String relationName = 'none';

class _RelationShipStatefulState extends State<RelationShipStateful> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 72, 144, 45),
        child: Text(
          'Relationships',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
      Expanded(
        flex: 5,
        child: ListView(
          children: [
            ...List.generate(relationsNames.length, (index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      print(relationsNames[index]);
                      relationName = relationsNames[index];
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
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Row(children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text('Done',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 20),))
                                        ],),
                                        Row(
                                          children: [
                                            Text(relationName,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600)),
                                            Spacer(),
                                            Container(
                                              width: 100,
                                              height:100,
                                              alignment: Alignment.bottomCenter,
                                              child:Text('Edit',style:TextStyle(fontSize:12)),
                                              decoration: BoxDecoration(
                                                color: Color(0xffC4C4C4),
                                                borderRadius: BorderRadius.circular(41)
                                              )
                                            )
                                          ],
                                        ),
                                        Row(children: [
                                          Text('Name:',style: TextStyle(fontSize:20, fontWeight:FontWeight.w400),),
                                          Expanded(
                                            
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              )
                                            ))
                                        
                                        ]),
                                        Divider(thickness: 1,height: 10,color: Color(0xFFCC9B66)),
                                        Row(children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top:15.0),
                                            child: Text('Age:',style: TextStyle(fontSize:20, fontWeight:FontWeight.w400),),
                                          ),
                                          Expanded(
                                            
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              )
                                            ))
                                        
                                        ]),
                                        Divider(thickness: 1,height: 10,color: Color(0xFFCC9B66)),
                                        Row(children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top:15.0),
                                            child: Text('Phone Number:',style: TextStyle(fontSize:20, fontWeight:FontWeight.w400),),
                                          ),
                                          Expanded(
                                            
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              )
                                            ))
                                        
                                        ]),
                                        Divider(thickness: 1,height: 10,color: Color(0xFFCC9B66)),
                                        Row(children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top:15.0),
                                            child: Text('Status:',style: TextStyle(fontSize:20, fontWeight:FontWeight.w400),),
                                          ),
                                          Expanded(
                                            
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              )
                                            ))
                                        
                                        ]),
                                        Divider(thickness: 1,height: 10,color: Color(0xFFCC9B66)),
                                        Row(children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top:15.0),
                                            child: Text('Occupation:',style: TextStyle(fontSize:20, fontWeight:FontWeight.w400),),
                                          ),
                                          Expanded(
                                            
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              )
                                            ))
                                        
                                        ]),
                                        Divider(thickness: 1,height: 10,color: Color(0xFFCC9B66)),
                                        ],
                                    ));
                                },
                              );
                            });
                          });
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(30, 16, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          relationsNames[index],
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        )),
                  ),
                  CustomDivider(),
                ],
              );
            }),
          ],
        ),
      ),
      Expanded(
          flex: 1,
          child: Text('Add Custom',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)))
    ]);
  }
}
