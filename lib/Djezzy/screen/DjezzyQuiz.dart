import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';

import 'package:flutter/material.dart';

class DjezzyQuiz extends StatefulWidget {
  static const tag = '/DjezzyQuiz';
  @override
  _DjezzyQuizState createState() => _DjezzyQuizState();
}

class _DjezzyQuizState extends State<DjezzyQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      // body: SafeArea(
      //   child: Container(
      //     child: Column(
      //       children: <Widget>[
      //         Row(
      //           children: <Widget>[
      //             DefaultTabController(
      //               length: 3,
      //               child: TabBar(
      //                   unselectedLabelColor: Colors.redAccent,
      //                   indicatorSize: TabBarIndicatorSize.label,
      //                   indicator: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(50),
      //                       color: Colors.redAccent),
      //                   tabs: [
      //                     Tab(
      //                       child: Container(
      //                         decoration: BoxDecoration(
      //                             borderRadius: BorderRadius.circular(50),
      //                             border: Border.all(
      //                                 color: Colors.redAccent, width: 1)),
      //                         child: Align(
      //                           alignment: Alignment.center,
      //                           child: Text("APPS"),
      //                         ),
      //                       ),
      //                     ),
      //                     Tab(
      //                       child: Container(
      //                         decoration: BoxDecoration(
      //                             borderRadius: BorderRadius.circular(50),
      //                             border: Border.all(
      //                                 color: Colors.redAccent, width: 1)),
      //                         child: Align(
      //                           alignment: Alignment.center,
      //                           child: Text("MOVIES"),
      //                         ),
      //                       ),
      //                     ),
      //                     Tab(
      //                       child: Container(
      //                         decoration: BoxDecoration(
      //                             borderRadius: BorderRadius.circular(50),
      //                             border: Border.all(
      //                                 color: Colors.redAccent, width: 1)),
      //                         child: Align(
      //                           alignment: Alignment.center,
      //                           child: Text("GAMES"),
      //                         ),
      //                       ),
      //                     ),
      //                   ]),
      //             ),
      //           ],
      //         ),
      //         Row(
      //           children: <Widget>[
      //             TabBarView(children: [
      //               Icon(Icons.apps),
      //               Icon(Icons.movie),
      //               Icon(Icons.games),
      //             ]),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // )
    );
  }
}
