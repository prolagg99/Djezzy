import 'package:djezzy/Djezzy/screen/DjezzyOffersHistory.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:djezzy/Djezzy/utils/DjezzySlider.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/model/DjezzyModels.dart';

import 'package:flutter/material.dart';

class DjezzyHome extends StatefulWidget {
  static String tag = '/DjezzyHome';
  @override
  _DjezzyHomeState createState() => _DjezzyHomeState();
}

class _DjezzyHomeState extends State<DjezzyHome> {
  static List<DjezzyImtiyaz> mListings;
  DjezzyImtiyaz imtiyaz;
  final number = "0796123112"
      .replaceAllMapped(RegExp(r".{2}"), (match) => "${match.group(0)} ");

  @override
  void initState() {
    super.initState();
    mListings = getImtiyaz();
    imtiyaz = mListings[0];
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(Colors.black);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: SafeArea(
        child: ScrollConfiguration(
        behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 350,
                        height: 56,
                        decoration: BoxDecoration(
                          color: colorPrimary,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1.5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    Icon(Icons.person,
                                        size: 16, color: colorPrimary_dark),
                                    SizedBox(width: 1),
                                    Text('Number',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: fontRegular,
                                            color: colorPrimary_light))
                                  ]),
                                  Text('$number',
                                      style: TextStyle(
                                          fontFamily: fontBold,
                                          fontSize: textSizeSMedium,
                                          color: colorPrimary_light))
                                ]),
                            SizedBox(width: 32),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    Icon(Icons.account_box,
                                        size: 16, color: colorPrimary_dark),
                                    SizedBox(width: 1),
                                    Text('Credit',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: fontRegular,
                                            color: colorPrimary_light))
                                  ]),
                                  Text('4 DA',
                                      style: TextStyle(
                                          fontFamily: fontBold,
                                          fontSize: textSizeSMedium,
                                          color: colorPrimary_light))
                                ]),
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
                                        "MORE CREDIT ?",
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
                      // the best offers card *************************************************************
                      Row(
                        children: <Widget>[
                          Text(
                            'Best offres :',
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
                      InkWell(
                        onTap: () {
                          showBottomSheetImtiyaz(context, imtiyaz);
                        },
                        child: Container(
                          width: 350,
                          height: 85,
                          decoration: boxDecoration(),
                          child: Row(children: <Widget>[
                            leftContainerOfCard(),
                            Expanded(
                              flex: 2,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(imtiyaz.imtiyaz,
                                        style: TextStyle(
                                            fontSize: textSizeMedium,
                                            fontFamily: fontBold,
                                            color: colorPrimary_dark)),
                                    Row(children: <Widget>[
                                      Expanded(
                                          flex: 1,
                                          child: Column(children: <Widget>[
                                            Image.asset(imtiyaz.imgoffre1,
                                                height: 22,
                                                width: 22,
                                                color: colorPrimary_light),
                                            SizedBox(height: 7),
                                            Container(
                                                width: 54,
                                                child: Text(imtiyaz.offre1,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: textSizeSMedium,
                                                        color:
                                                            colorPrimary_dark)))
                                          ])),
                                      Expanded(
                                          flex: 1,
                                          child: Column(children: <Widget>[
                                            Image.asset(imtiyaz.imgoffre2,
                                                height: 22,
                                                width: 22,
                                                color: colorPrimary_light),
                                            SizedBox(height: 7),
                                            Container(
                                                width: 60,
                                                child: Text(imtiyaz.offre2,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: textSizeSMedium,
                                                        color:
                                                            colorPrimary_dark)))
                                          ]))
                                    ])
                                  ]),
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      TextSized(
                                          delay: imtiyaz.delay,
                                          price: imtiyaz.price,
                                          textStyle: TextStyle(
                                              fontSize: textSizeMedium,
                                              fontFamily: fontBold,
                                              color: colorPrimary_dark),
                                          selected: 2)
                                    ]))
                          ]),
                        ),
                      ),
                      SizedBox(height: 14),
                      // the theard card *************************************************************
                      Container(
                          width: 350,
                          height: 90,
                          decoration: BoxDecoration(
                              color: colorPrimary,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 1.5,
                                  blurRadius: 4,
                                  offset: Offset(
                                      0, 2.5), // changes position of shadow
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SizedBox(width: 10, height: 40),
                                  Text('Offers History',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: fontRegular,
                                          fontSize: textSizeMedium)),
                                  SizedBox(width: 164),
                                  InkWell(
                                    onTap: () {
                                      launchScreen(
                                          context, DjezzyOffersHistory.tag);
                                    },
                                    child: Text('See more',
                                        style: TextStyle(
                                            color: colorAccent,
                                            fontFamily: fontMedium,
                                            fontSize: textSizeSmall)),
                                  )
                                ],
                              ),
                              Row(children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Sun. 16 Feb., 13:58',
                                              style: TextStyle(
                                                  color: colorPrimary_dark,
                                                  fontFamily: fontRegular,
                                                  fontSize: textSizeSMedium)),
                                          Text('IMTIYAZ 600',
                                              style: TextStyle(
                                                  color: colorAccent,
                                                  fontFamily: fontMedium,
                                                  fontSize: textSizeSmall))
                                        ])),
                                SizedBox(width: 50),
                                Column(children: <Widget>[
                                  Text('600 DA',
                                      style: TextStyle(
                                          color: colorPrimary_dark,
                                          fontFamily: fontMedium,
                                          fontSize: textSizeSmall))
                                ])
                              ])
                            ],
                          ))
                    ])),
          ),
        ),
      ),
    );
  }
}
