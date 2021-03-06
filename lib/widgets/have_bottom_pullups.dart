import 'package:flutter/material.dart';
import 'package:upcloud_profile_page/widgets/relations.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

Future allergiesBottomPullup(BuildContext context) {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        margin: EdgeInsets.fromLTRB(44, 16, 44, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.search,size: 14,),
                            SizedBox(width:5),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                    labelText: 'Search Allergies to Add and Remove',
                                    labelStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomDivider(),
                      SizedBox(height: 31),
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
                          "An allergy is an immune system response to a foreign substance that's not typically harmful to your body. These foreign substances are called allergens. They can include certain foods, pollen, or pet dander",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffE3B287),
                          ),
                        ),
                      ),
                      SizedBox(height: 46),
                      Expanded(
                        child: ListView(children: [
                          ...List.generate(3, (index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.fromLTRB(44, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Lactose Intollerent',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                        ),
                                        Spacer(),
                                        Icon(Icons.check),
                                        SizedBox(width: 44),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomDivider(),
                              ],
                            );
                          })
                        ]),
                      )
                    ],
                    // controller: controller,
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
                    margin: EdgeInsets.fromLTRB(44, 16, 44, 31),
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
