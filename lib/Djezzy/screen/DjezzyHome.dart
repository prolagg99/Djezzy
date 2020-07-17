import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:djezzy/Djezzy/utils/DjezzySlider.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:flutter/material.dart';

class DjezzyHome extends StatefulWidget {
  static String tag = '/DjezzyHome';
  @override
  _DjezzyHomeState createState() => _DjezzyHomeState();
}

class _DjezzyHomeState extends State<DjezzyHome> {
  final number = "0796123112"
      .replaceAllMapped(RegExp(r".{2}"), (match) => "${match.group(0)} ");
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    changeStatusColor(Colors.black);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: addLeadingIcon(),
        titleSpacing: -8,
        title: Text(
          'Bonjour!',
          style: TextStyle(
            color: colorPrimary_light,
            fontFamily: fontRegular,
            fontSize: 14.5,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 350,
                  height: 56,
                  decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 1.5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                size: 16,
                                color: colorPrimary_dark,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                'Numéro',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: fontRegular,
                                  color: colorPrimary_light,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '$number',
                            style: TextStyle(
                              fontFamily: fontBold,
                              fontSize: textSizeSMedium,
                              color: colorPrimary_light,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.account_box,
                                size: 16,
                                color: colorPrimary_dark,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                'Crédit',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: fontRegular,
                                  color: colorPrimary_light,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '4 DA',
                            style: TextStyle(
                              fontFamily: fontBold,
                              fontSize: textSizeSMedium,
                              color: colorPrimary_light,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 34,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonTheme(
                            height: 22.0,
                            child: RaisedButton(
                              padding: const EdgeInsets.all(8.0),
                              textColor: Colors.white,
                              color: colorPrimary,
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 0),
                                child: new Text(
                                  "PLUS DE CREDIT ?",
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontFamily: fontBold,
                                      color: colorAccent),
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: colorAccent)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // the image slider ************************************************************
                Container(
                  // margin: EdgeInsets.only(
                  //     top: spacing_standard_new, bottom: spacing_standard_new),
                  // decoration: boxDecoration(showShadow: true, radius: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 12),
                          GestureDetector(
                            onTap: () {
                              // launchScreen(context, DzMeEvent.tag);
                            },
                            child: DjezzySliderWidget(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // the second card *************************************************************
                Row(
                  children: <Widget>[
                    Text(
                      'Meilleure offre :',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: fontRegular,
                          fontSize: textSizeMedium),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 350,
                  height: 90,
                  decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1.5,
                        blurRadius: 2,
                        offset: Offset(0, 1.5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: double.infinity,
                        width: 10,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(0)),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [colorAccent, colorAccent2])),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'IMTIYAZ 190',
                                style: TextStyle(
                                  fontSize: textSizeMedium,
                                  fontFamily: fontBold,
                                  color: colorPrimary_dark,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Image.asset(
                                    ic_world2,
                                    height: 23,
                                    width: 23,
                                    color: colorPrimary_light,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '3 Go',
                                    style: TextStyle(
                                      // fontFamily: fontRegular,
                                      fontSize: textSizeSMedium,
                                      color: colorPrimary_dark,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: <Widget>[
                                  Image.asset(
                                    ic_server,
                                    height: 23,
                                    width: 23,
                                    color: colorPrimary_light,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '1000 DA',
                                    style: TextStyle(
                                      fontSize: textSizeSMedium,
                                      color: colorPrimary_dark,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '190 DA',
                                style: TextStyle(
                                  fontSize: textSizeMedium,
                                  fontFamily: fontBold,
                                  color: colorPrimary_dark,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 1,
                            width: 54,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(6),
                                  bottomRight: Radius.circular(0)),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '24 Heures',
                            style: TextStyle(
                              fontFamily: fontMedium,
                              fontSize: textSizeSmall,
                              color: colorAccentGreen,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                // the theard card *************************************************************
                Container(
                  width: 350,
                  height: 90,
                  decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1.5,
                        blurRadius: 4,
                        offset: Offset(0, 2.5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                            height: 40,
                          ),
                          Text(
                            'Historique des offres',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: fontRegular,
                                fontSize: textSizeMedium),
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Text(
                            'Voir plus',
                            style: TextStyle(
                                color: colorAccent,
                                fontFamily: fontMedium,
                                fontSize: textSizeSmall),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Dim. 16 Févr., 13:58',
                                  style: TextStyle(
                                      color: colorPrimary_dark,
                                      fontFamily: fontRegular,
                                      fontSize: textSizeSMedium),
                                ),
                                Text(
                                  'IMTIYAZ 600',
                                  style: TextStyle(
                                      color: colorAccent,
                                      fontFamily: fontMedium,
                                      fontSize: textSizeSmall),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                '600 DA',
                                style: TextStyle(
                                    color: colorPrimary_dark,
                                    fontFamily: fontMedium,
                                    fontSize: textSizeSmall),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
