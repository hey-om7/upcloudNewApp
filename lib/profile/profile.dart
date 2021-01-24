import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/otherinfo.dart';
import '../profile/profiles_list.dart';
import '../globals.dart' as globals;
import 'profile_list_items.dart';

class ProfileSec extends StatefulWidget {
  @override
  _ProfileSecState createState() => _ProfileSecState();
}

class _ProfileSecState extends State<ProfileSec> {
  bool st = false;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Column(
                //physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    // padding: const EdgeInsets.all(40.0),
                    padding: const EdgeInsets.fromLTRB(40, 40, 40, 27),
                    child: Row(
                      children: [
                        Hero(
                          tag: 'imagetrans',
                          child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              //this is the surrounding container for the image
                              // decoration: BoxDecoration(
                              //     border: Border.all(
                              //         color: Colors.grey[200], width: 3),
                              //     borderRadius:
                              //         BorderRadius.all(Radius.circular(51)),
                              //     boxShadow: [
                              //       BoxShadow(
                              //         color: Colors.grey[600],
                              //         offset: Offset(-1, 6.0),
                              //         blurRadius: 6.0,
                              //         spreadRadius: 0.03,
                              //       )
                              //     ]),
                              //width: 124,
                              //color: Colors.white,
                              child: Image.asset('assets/images/teenage.png',
                                  width: 124)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        //sidebar information of the main photo
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'M',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue)),
                                    TextSpan(
                                        text: 'y',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                    TextSpan(
                                        text: 's',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green)),
                                    TextSpan(
                                        text: 'e',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.yellow)),
                                    TextSpan(
                                        text: 'l',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green[500])),
                                    TextSpan(
                                        text: 'f',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue[700])),
                                  ],
                                ),
                              ),
                              OtherInfo(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  PrePro(),
                  SizedBox(
                    height: 42,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        globals.currentpage = 0;
                      });
                    },
                    child: globals.currentpage == 0
                        ? Column(
                            children: [
                              Text(
                                'Me',
                                style: TextStyle(fontSize: 20),
                              ),
                              Container(
                                height: 4,
                                color: Color(0xffcc9b66),
                                width: 40,
                              )
                            ],
                          )
                        : Text(
                            'Me',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        globals.currentpage = 1;
                      });
                    },
                    child: globals.currentpage == 1
                        ? Column(
                            children: [
                              Text(
                                'Have',
                                style: TextStyle(fontSize: 20),
                              ),
                              Container(
                                height: 4,
                                color: Color(0xffcc9b66),
                                width: 40,
                              )
                            ],
                          )
                        : Text(
                            'Have',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        globals.currentpage = 2;
                      });
                    },
                    child: globals.currentpage == 2
                        ? Column(
                            children: [
                              Text(
                                '  i  ',
                                style: TextStyle(fontSize: 20),
                              ),
                              Container(
                                height: 4,
                                color: Color(0xffcc9b66),
                                width: 40,
                              )
                            ],
                          )
                        : Text(
                            '  i  ',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView(
                  children: [
                    globals.currentpage == 0
                        ? ProfileLists()
                        : globals.currentpage == 1
                            ? HaveLists()
                            : ILists(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //elevation: 20,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Label',
//backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brightness_1),
            label: 'Label',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.branding_watermark),
            label: 'Label',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assistant,
            ),
            label: 'Label',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'Label',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
