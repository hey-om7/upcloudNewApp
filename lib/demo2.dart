// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:upcloud_profile_page/widgets/myself.dart';
import 'widgets/otherinfo.dart';

class Demo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Floating App Bar';

    return MaterialApp(
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              // Provide a standard title.
              //title: Text(title),
              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              floating: true,
              pinned: true,
              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Padding(
                  // padding: const EdgeInsets.all(40.0),
                  padding: const EdgeInsets.fromLTRB(36, 0, 27, 0),
                  child: Row(
                    children: [
                      Hero(
                        tag: 'imagetrans',
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
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
                            // SizedBox(
                            //   height: 30,
                            // ),
                            Myself(),
                            OtherInfo(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //Placeholder(),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 300,
            ),
            // Next, create a SliverList
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                (context, index) => ListTile(title: Text('Item #$index')),
                // Builds 1000 ListTiles
                childCount: 1000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
