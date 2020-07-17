import 'package:djezzy/Djezzy/screen/DjezzyDashboard.dart';
import 'package:djezzy/Djezzy/screen/DjezzyFlexy.dart';
import 'package:djezzy/Djezzy/screen/DjezzyHome.dart';
import 'package:djezzy/Djezzy/screen/DjezzyLoading.dart';
// import 'package:djezzy/Djezzy/screen/DjezzyOffers.dart';
import 'package:djezzy/Djezzy/screen/DjezzyOffersTest.dart';
import 'package:djezzy/Djezzy/screen/DjezzyProfile.dart';
import 'package:djezzy/Djezzy/screen/DjezzyQuiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Djezzy());
}

class Djezzy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (context) => DjezzyLoading(),
        DjezzyLoading.tag: (context) => DjezzyLoading(),
        DjezzyHome.tag: (context) => DjezzyHome(),
        DjezzyDashboard.tag: (context) => DjezzyDashboard(),
        // DjezzyOffers.tag: (context) => DjezzyOffers(),
        DjezzyOffersTest.tag: (context) => DjezzyOffersTest(),
        DjezzyQuiz.tag: (context) => DjezzyQuiz(),
        DjezzyProfile.tag: (context) => DjezzyProfile(),
        DjezzyFlexy.tag: (context) => DjezzyFlexy(),
      },
    );
  }
}

// class Djezzy2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Container(
//       width: 300,
//       height: 200,
//     );
//   }
// }
