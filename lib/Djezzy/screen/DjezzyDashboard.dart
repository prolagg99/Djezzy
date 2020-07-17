import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';

import 'package:djezzy/Djezzy/screen/DjezzyFlexy.dart';
import 'package:djezzy/Djezzy/screen/DjezzyHome.dart';
import 'package:djezzy/Djezzy/screen/DjezzyOffers.dart';
import 'package:djezzy/Djezzy/screen/DjezzyProfile.dart';
import 'package:djezzy/Djezzy/screen/DjezzyQuiz.dart';

class DjezzyDashboard extends StatefulWidget {
  static String tag = '/DjezzyDashboard';

  @override
  DjezzyDashboardState createState() => DjezzyDashboardState();
}

class DjezzyDashboardState extends State<DjezzyDashboard> {
  var isSelected = 0;

  final List<Widget> _children = [
    DjezzyHome(),
    DjezzyOffers(),
    DjezzyQuiz(),
    DjezzyFlexy(),
    DjezzyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    changeStatusColor(Colors.black);
    return Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            // BoxShadow(
            //   color: Colors.grey[100],
            //   blurRadius: 5,
            //   spreadRadius: 5,
            // ),
          ]),
          padding: const EdgeInsets.only(left: 0, right: 0),
          child:
              // Column(
              //   children: <Widget>[
              //     Container(
              //       color: Colors.black,
              //       height: 1,
              //       width: double.infinity,
              //     ),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              tabItem(0, ic_home, ic_home2),
              tabItem(1, ic_offers, ic_offers2),
              tabItem(2, ic_quiz, ic_quiz2),
              tabItem(3, ic_flexy, ic_flexy2),
              tabItem(4, ic_profile, ic_profile2),
            ],
          ),
          //   ],
          // ),
        ),
        body: _children[isSelected]);
  }

  Widget tabItem(var pos, Icon icon, Icon icon2) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = pos;
          DjezzyHome();
        });
      },
      child: Container(
        width: 72,
        height: 72,
        alignment: Alignment.center,
        // decoration: isSelected == pos
        //     ? BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100])
        //     : BoxDecoration(),
        child: Column(
          children: <Widget>[
            isSelected == pos
                ? Container(height: 0.75, width: 120, color: colorAccent)
                : Container(height: 0.75, width: 120, color: Colors.black12),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: isSelected == pos ? icon2 : icon,
            ),
          ],
        ),
      ),
    );
  }
}
