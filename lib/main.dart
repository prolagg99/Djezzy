import 'package:djezzy/Djezzy/screen/DjezzyDashboard.dart';
import 'package:djezzy/Djezzy/screen/DjezzyEmergency.dart';
import 'package:djezzy/Djezzy/screen/DjezzyFlexy.dart';
import 'package:djezzy/Djezzy/screen/DjezzyHome.dart';
import 'package:djezzy/Djezzy/screen/DjezzyLoading.dart';
import 'package:djezzy/Djezzy/screen/DjezzyOffers.dart';
import 'package:djezzy/Djezzy/screen/DjezzyOffersHistory.dart';
import 'package:djezzy/Djezzy/screen/DjezzyPrimary.dart';
import 'package:djezzy/Djezzy/screen/DjezzyProfile.dart';
import 'package:djezzy/Djezzy/screen/DjezzyQuiz.dart';
import 'package:djezzy/Djezzy/screen/DjezzyMiddle.dart';
import 'package:djezzy/Djezzy/screen/DjezzySecondary.dart';
import 'package:djezzy/Djezzy/screen/qibus.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(Djezzy());
}

class Djezzy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (context) => QIBusVerification(),
        DjezzyLoading.tag: (context) => DjezzyLoading(),
        DjezzyHome.tag: (context) => DjezzyHome(),
        DjezzyDashboard.tag: (context) => DjezzyDashboard(),
        DjezzyOffers.tag: (context) => DjezzyOffers(),
        DjezzyQuiz.tag: (context) => DjezzyQuiz(),
        DjezzyProfile.tag: (context) => DjezzyProfile(),
        DjezzyFlexy.tag: (context) => DjezzyFlexy(),
        DjezzyOffersHistory.tag: (context) => DjezzyOffersHistory(),
        DjezzyEmergency.tag: (context) => DjezzyEmergency(),
        DjezzyPrimary.tag: (context) => DjezzyPrimary(),
        DjezzyMiddle.tag: (context) => DjezzyMiddle(),
        DjezzySecondary.tag: (context) => DjezzySecondary(),
        QIBusVerification.tag: (context) => QIBusVerification(),

      },
    );
  }
}
