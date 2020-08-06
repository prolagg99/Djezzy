import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
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
  
  @override
  Widget build(BuildContext context) {
    changeStatusColor(Colors.black);
    return DefaultTabController(
        length: 5,
        child: new Scaffold(
          body: TabBarView(
            children: [
              DjezzyHome(),
              DjezzyOffers(),
              DjezzyQuiz(),
              DjezzyFlexy(),
              DjezzyProfile(),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.0),
            border: Border(top: BorderSide(color: Colors.grey[200], width: 1))),
            child: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.shopping_cart),
                ),
                Tab(
                  icon: new Icon(Icons.local_offer),
                ),
                Tab(
                  icon: new Icon(Icons.phone_iphone),
                ),
                Tab(icon: new Icon(Icons.menu),)
              ],
              labelColor: colorAccent,
              unselectedLabelColor: colorPrimary_light,
              // indicatorSize: TabBarIndicatorSize.label,
              // indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.red,
              indicator:  UnderlineTabIndicator(
                insets: EdgeInsets.fromLTRB(00.0, 0.0, 00.0, 48.0),
                borderSide: BorderSide( color: Colors.red,width: 1,))
            ),
          ),
          backgroundColor: Colors.white,
        ),
      );
  }
}
