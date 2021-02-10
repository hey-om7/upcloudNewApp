import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upcloud_profile_page/relationships.dart';
import 'package:upcloud_profile_page/widgets/relations.dart';
//import 'package:upcloud_profile_page/bottomNavig.dart';
import '../globals.dart' as globals;

Row peopleProf(image, name, BuildContext context, [icon]) {
  return Row(
    children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: icon == null
                  ? [
                      BoxShadow(
                        color: Colors.grey[600],
                        offset: Offset(-1, 6.0),
                        blurRadius: 6.0,
                        spreadRadius: 0.03,
                      )
                    ]
                  : null,
            ),
            child: CircleAvatar(
              radius: 21,
              backgroundColor: icon == null ? Colors.white : Colors.transparent,
              child: icon == null
                  ? CircleAvatar(
                      radius: 19.4,
                      backgroundImage: AssetImage('assets/images/$image.png'),
                    )
                  : IconButton(
                      icon: Icon(icon),
                      onPressed: () {
                        //globals.add
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => RelationShip()));
                        // globals.data.length = globals.data.length + 1;
                        // globals.data[globals.data.length] =
                        //     peopleProf('Girl', 'Sister');
                      },
                      color: Colors.black,
                    ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            '$name',
            style: TextStyle(fontSize: 9),
          )
        ],
      ),
      // SizedBox(
      //   width: 14,
      // ),
    ],
  );
}

class PrePro extends StatefulWidget {
  @override
  _PreProState createState() => _PreProState();
}

class _PreProState extends State<PrePro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: EdgeInsets.only(left: 0, right: 20),

      //padding: EdgeInsets.only(left: 45,right: 45),
      //margin: EdgeInsets.only(left: 20, right: 0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          peopleProf('Boy', 'Partner', context),
          peopleProf('Girl', 'Sister', context),
          peopleProf('mother', 'Mother', context),
          peopleProf('Father', 'Father', context),

          //////////////

          Hero(
            tag: 'testdelagain',
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  //size: 20,
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     new MaterialPageRoute(
                    //         builder: (context) => TestDel()));
                    setState(() {
                      print('pressed');
                      ListView.builder(itemBuilder: (context, index) {
                        return peopleProf('Boy', 'John', context);
                      });
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
      //color: Colors.red,
    );
  }
}
