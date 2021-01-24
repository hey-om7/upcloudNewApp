import 'dart:async';

import 'package:flutter/material.dart';
import 'package:upcloud_profile_page/widgets/bottom_navbar.dart';
import '../widgets/have.dart';
import '../widgets/i.dart';
import '../widgets/me.dart';
import '../widgets/otherinfo.dart';
import '../globals.dart' as globals;
import '../widgets/myself.dart';
import 'profiles_list.dart';
//import 'profiles_list.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  ScrollController _scrollViewController;
  var _gradientColor1 = Colors.black;
  bool st = false;
  void changeColor() {
    if ((_scrollViewController.offset == 0)) {
      setState(() {
        _gradientColor1 = Colors.black;
      });
    } else if ((_scrollViewController.offset > 0)) {
      var opacity = _scrollViewController.offset / 100;
      setState(() {
        _gradientColor1 = Color.fromRGBO(0, 0, 0, 1 - opacity);
      });
    }
  }

  @override
  // ignore: must_call_super
  void initState() {
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
    _scrollViewController.addListener(changeColor);
  }

  ScrollController _scrollController22 = new ScrollController();

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 1),
      () => _scrollController22
          .jumpTo(_scrollController22.position.maxScrollExtent),
    );
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          //controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 30, 0),
                    child: Text('Edit',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w300)),
                  )
                ],
                // leading: ,
                stretch: true,
                shadowColor: Colors.transparent,
                backgroundColor: Colors.white,
                expandedHeight: 206.0,
                collapsedHeight: 70,
                floating: false,
                // snap: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    centerTitle: false,
                    titlePadding: EdgeInsets.fromLTRB(30, 20, 60, 5),
                    title: Transform.translate(
                      offset: Offset(5, -5),
                      child: FittedBox(
                        child: Padding(
                          // padding: const EdgeInsets.all(40.0),
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                          child: Row(
                            children: [
                              Hero(
                                tag: 'imagetrans',
                                child: Transform.scale(
                                  scale: 1.15,
                                  child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      //this is the surrounding container for the image
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 3.7),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(51)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey[600],
                                              offset: Offset(-1, 6.0),
                                              blurRadius: 6.0,
                                              spreadRadius: 0.03,
                                            )
                                          ]),
                                      //width: 124,
                                      //color: Colors.white,
                                      child: Image.asset(
                                          'assets/images/teenage.png',
                                          width: 124)),
                                ),
                              ),
                              Container(
                                width: 33,
                              ),
                              //sidebar information of the main photo
                              Container(
                                //color: Colors.red,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Myself(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 61),
                                      child: OtherInfo(),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    background: Image.network(
                        "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                        fit: BoxFit.fill,
                        color: Colors.transparent)),
              ),
            ];
          },
          body: Container(
            //height: MediaQuery.of(context).size.height - 206,
            color: Colors.white,
            child: Stack(
              children: [
                ListView(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 75,
                      width: MediaQuery.of(context).size.width,
                      padding:
                          const EdgeInsets.only(top: 8.0, right: 30, bottom: 0),
                      child: ListView.builder(
                        controller: _scrollController22,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: peopleProf('Boy', 'Partner', context),
                            );
                          } else if (index == globals.data.length) {
                            return peopleProf('', '', context, Icons.add);
                          }
                          return peopleProf('Boy', 'Partner', context);
                        },
                        itemCount: globals.data.length + 1,
                      ),
                    ),
                    DefaultTabController(
                        length: 3, // length of tabs
                        initialIndex: 1,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                child: TabBar(
                                  indicatorWeight: 3,
                                  indicatorSize: TabBarIndicatorSize.label,
                                  indicatorColor: Color(0xFFCC9B66),
                                  // indicator: BoxDecoration(
                                  //   color: Color(0xFFCC9B66),
                                  // ),
                                  labelColor: Colors.black,
                                  //Color(0xFFCC9B66),
                                  unselectedLabelColor: Colors.black54,
                                  tabs: [
                                    Tab(
                                        child: Text(
                                      'Me',
                                      style: TextStyle(fontSize: 18),
                                    )),
                                    Tab(
                                        child: Text(
                                      'Have',
                                      style: TextStyle(fontSize: 18),
                                    )),
                                    Tab(
                                        child: Text(
                                      'i',
                                      style: TextStyle(fontSize: 18),
                                    )),
                                  ],
                                ),
                              ),
                              Container(
                                  height: 400, //height of TabBarView
                                  decoration: BoxDecoration(
                                      // border: Border(
                                      //     top: BorderSide(
                                      //         color: Colors.grey, width: 0.5)
                                      //         )
                                      ),
                                  child: TabBarView(children: <Widget>[
                                    Me(),
                                    Have(),
                                    I(),
                                  ]))
                            ])),
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
        ),
      ),
    );
  }
}
