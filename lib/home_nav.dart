import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './profile/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 120),
                width: MediaQuery.of(context).size.width,
                //color: Colors.white,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'imagetrans',
                      child: FlatButton(
                        child: Container(
                            //this is the surrounding container for the image
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey[200], width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(51)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[600],
                                    offset: Offset(-1, 6.0),
                                    blurRadius: 6.0,
                                    spreadRadius: 0.03,
                                  )
                                ]),
                            width: 124,
                            //color: Colors.white,
                            child: Image.asset('assets/images/teenage.png',
                                width: 124)),
                        onPressed: () {
                          print('pressed');
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => ProfileSec()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Hero(
                      tag: 'detailtrans',
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'F/',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '23',
                            style: TextStyle(
                              fontSize: 17,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                //alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width,

                //color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/faceid.png',
                      width: 23,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Scan to unlock your profile',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
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
