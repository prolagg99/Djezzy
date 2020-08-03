import 'package:djezzy/Djezzy/screen/DjezzyOffersHistory.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:djezzy/Djezzy/utils/DjezzySlider.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/model/DjezzyModels.dart';

import 'package:flutter/material.dart';

class DjezzyHome extends StatefulWidget {
  static String tag = '/DjezzyHome';
  @override
  _DjezzyHomeState createState() => _DjezzyHomeState();
}

class _DjezzyHomeState extends State<DjezzyHome> with TickerProviderStateMixin {
  static List<DjezzyImtiyaz> mListings;
  DjezzyImtiyaz imtiyaz;
  final number = "0796123112"
      .replaceAllMapped(RegExp(r".{2}"), (match) => "${match.group(0)} ");

  bool isClickedOn = false;
  TabController _tabController;
  int _selectedIndex = 0;
  double height = 300;

  @override
  void initState() {
    super.initState();
    mListings = getImtiyaz();
    imtiyaz = mListings[0];

    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
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
                                    onPressed: () {
                                      showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                // isDismissible: true,
                                isScrollControlled: true,
                                builder: (context) {
                                  return ScrollConfiguration(
                                  behavior: MyBehavior(),
                                  child: SingleChildScrollView(
                                  child: Padding(
                                    padding:
                                        MediaQuery.of(context).viewInsets,
                                    child: StatefulBuilder(builder:
                                        (BuildContext context,
                                            StateSetter setState) {
                                      return Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width,
                                          /* 307 282*/
                                          height: height /*!isClickedOn ? 307 : 282*/,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                                // color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(18.0),
                                                  topRight:
                                                      const Radius.circular(18.0),
                                                ),
                                              ),
                                              child: DefaultTabController(
                                                  length: 2,
                                                  child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 10,
                                                          horizontal: 12),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            TabBar(
                                                              controller:
                                                                  _tabController,
                                                              onTap: (index) {
                                                                setState(() {
                                                                  _selectedIndex =
                                                                      _tabController
                                                                          .index;
                                                                           height = 250;   
                                                                      _tabController.index == 0 ? height = 300 
                                                                      : _tabController.index == 1 ?  height = 218 
                                                                      : height = 212;
                                                                 
                                                                });
                                                              },
                                                              isScrollable: true,
                                                              labelPadding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          0,
                                                                      vertical:
                                                                          0),
                                                              indicatorColor:
                                                                  colorAccent,
                                                              indicatorSize:
                                                                  TabBarIndicatorSize
                                                                      .label,
                                                              tabs: [
                                                                Tab(
                                                                    child: Container(
                                                                        width: MediaQuery.of(context).size.width / 2 - 20,
                                                                        height: double
                                                                            .infinity,
                                                                        child: Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Padding(
                                                                                padding: const EdgeInsets.only(top: 2),
                                                                                child: Text('CARTE DE RECHARGE', style: TextStyle(color: _selectedIndex == 0 ? colorAccent : colorPrimary_light, fontSize: 14)))))),
                                                                Tab(
                                                                    child: Container(
                                                                        width: MediaQuery.of(context).size.width / 4 - 5,
                                                                        height: double.infinity,
                                                                        child: Align(
                                                                            alignment: Alignment.center,
                                                                            child: Padding(
                                                                                padding: const EdgeInsets.only(top: 2.0),
                                                                                child: Text(
                                                                                  'E-FLEXY',
                                                                                  style: TextStyle(color: _selectedIndex == 1 ? colorAccent : colorPrimary_light, fontSize: 14),
                                                                                ))))),
                                                                Tab(
                                                                    child: Container(
                                                                        width: MediaQuery.of(context).size.width / 4 - 5,
                                                                        height: double.infinity,
                                                                        child: Align(
                                                                            alignment: Alignment.center,
                                                                            child: Padding(
                                                                                padding: const EdgeInsets.only(top: 2.0),
                                                                                child: Text(
                                                                                  'TRANQUILO',
                                                                                  style: TextStyle(color: _selectedIndex == 2 ? colorAccent : colorPrimary_light, fontSize: 14),
                                                                                ))))),
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: TabBarView(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  controller:
                                                                      _tabController,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets.fromLTRB(8,10,8,8),
                                                                      child: Container(
                                                                        height: 96,
                                                                        width: MediaQuery.of(context).size.width - 24,
                                                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: colorPrimary, border: Border.all(width: 0.5, color: Colors.redAccent)),
                                                                        child: Padding(
                  padding: const EdgeInsets.fromLTRB(9,8,9,0),
                  child: Container(
                      width: 265,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Icon(Icons.credit_card,size: 38,color: colorAccent,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Text('Insérer les 14 chiffres de votre carte de recharge ou Bon TPE',
                                    style: TextStyle(
                                        color: colorPrimary_light,
                                        fontSize: 14)),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width - 59,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: colorPrimary,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 2.5) // changes position of shadow
                                      )
                                    ]),
                                    child : Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10),
                                      child: PinEntryTextField(
                                        fields: 4,
                                        fontSize: textSizeLargeMedium,
                                      ),
                                    ),
                                ),
                              ],
                            )
                          ),
                          Container(
                                    height: 1,
                                    width: 220,
                                    color: colorPrimary_light),
                                    SizedBox(height: 2),
                          Expanded(
                            flex: 1,
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(28, 6, 22, 6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('ANNULERL',
                                        style: TextStyle(
                                            color: colorPrimary_light,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Container(height: 34,width: 34,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(35),
                                       boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 1,
                                      offset: Offset(0, 2) // changes position of shadow
                                      )
                                    ]),
                                    child: Icon(Icons.calendar_view_day, color: Colors.white),
                                    ),
                                    Text('CONFIRMER',
                                        style: TextStyle(
                                            color: colorAccentGreen,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))
                                  ],
                                )),
                          )
                        ],
                      )))
                    ),
                ),
                                                                    Container(
                                                                      height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height,
                                                                      child:
                                                                          Column(
                                                                        children: <
                                                                            Widget>[
                                                                          SizedBox(
                                                                              height:
                                                                                  12),
                                                                          Row(
                                                                            children: <
                                                                                Widget>[
                                                                              Padding(
                                                                                padding: const EdgeInsets.only(left: 8),
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: <Widget>[
                                                                                    Container(
                                                                                      height: 30,
                                                                                      child: Align(
                                                                                        alignment: Alignment.centerLeft,
                                                                                        child: Text(
                                                                                          'Choisissez votre méthode de paiment',
                                                                                          style: TextStyle(color: colorPrimary_light, fontSize: 16),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    // SizedBox(height: 6),
                                                                                    Container(
                                                                                      height: 98,
                                                                                      width: MediaQuery.of(context).size.width - 40,
                                                                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: colorPrimary, border: Border.all(width: 0.5, color: Colors.redAccent)),
                                                                                      child: Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: <Widget>[
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.symmetric(horizontal: 43),
                                                                                            child: Container(
                                                                                              height: 80,
                                                                                              width: 78,
                                                                                              decoration: BoxDecoration(
                                                                                                  color: Colors.white,
                                                                                                  borderRadius: BorderRadius.circular(5),
                                                                                                  boxShadow: [
                                                                                                BoxShadow(
                                                                                                    color: Colors.grey.withOpacity(0.3),
                                                                                                    spreadRadius: 2,
                                                                                                    blurRadius: 2,
                                                                                                    offset: Offset(0, 2) // changes position of shadow
                                                                                                    )
                                                                                                  ]),
                                                                                              child: OverflowBox(
                                                                                                  minWidth: 0.0, 
                                                                                                  minHeight: 0.0, 
                                                                                                  maxHeight: 60,
                                                                                                  maxWidth: 60,  
                                                                                                child: Image.asset(
                                                                                                    img_algpost)
                                                                                              ),
                                                                                              ),
                                                                                          ),   
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.only(right: 43),
                                                                                            child: Container(
                                                                                              height: 80,
                                                                                              width: 78,
                                                                                              decoration: BoxDecoration(
                                                                                                  color: Colors.white,
                                                                                                  borderRadius: BorderRadius.circular(5),
                                                                                                  boxShadow: [
                                                                                                BoxShadow(
                                                                                                    color: Colors.grey.withOpacity(0.3),
                                                                                                    spreadRadius: 2,
                                                                                                    blurRadius: 2,
                                                                                                    offset: Offset(0, 2) // changes position of shadow
                                                                                                    )
                                                                                                  ]),
                                                                                              child: OverflowBox(
                                                                                                  minWidth: 0.0, 
                                                                                                  minHeight: 0.0, 
                                                                                                  maxHeight: 48,
                                                                                                  maxWidth: 48,  
                                                                                                child: Image.asset(
                                                                                                    img_cib)
                                                                                              ),),
                                                                                          ),               
                                                                                        ],
                                                                                      ),
                                                                                ),
                                                                                ])  
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      ]),),
                                                                    Container(
                                                                      height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height,
                                                                      child:
                                                                          Column(
                                                                        children: <
                                                                            Widget>[
                                                                          SizedBox(
                                                                              height:
                                                                                  13),
                                                                          Row(
                                                                            children: <
                                                                                Widget>[
                                                                              Padding(
                                                                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: <Widget>[
                                                                                    Container(
                                                                                      height: 30,
                                                                                      child: Align(
                                                                                        alignment: Alignment.centerLeft,
                                                                                        child: Text(
                                                                                          'Bénificier d\'un montant de:',
                                                                                          style: TextStyle(color: colorPrimary_light, fontSize: 16),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    // SizedBox(height: 6),
                                                                                    Container(
                                                                                      height: 90,
                                                                                      width: MediaQuery.of(context).size.width - 40,
                                                                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: colorPrimary, border: Border.all(width: 0.5, color: Colors.redAccent)),
                                                                                      child: Row(
                                                                                        children: <Widget>[
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.all(12.0),
                                                                                            child: Container(
                                                                                              height: 80,
                                                                                              width: 80,
                                                                                              decoration: BoxDecoration(
                                                                                                  color: Colors.white,
                                                                                                  borderRadius: BorderRadius.circular(5),
                                                                                                  boxShadow: [
                                                                                                BoxShadow(
                                                                                                    color: Colors.grey.withOpacity(0.3),
                                                                                                    spreadRadius: 2,
                                                                                                    blurRadius: 2,
                                                                                                    offset: Offset(0, 2) // changes position of shadow
                                                                                                    )
                                                                                                  ]),
                                                                                              child: Row(
                                                                                                // crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: <Widget>[
                                                                                                  Text(
                                                                                                    '20',
                                                                                                    style: TextStyle(color: Colors.black, fontSize: 40),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    'da',
                                                                                                    style: TextStyle(color: colorPrimary_light, fontSize: 18),
                                                                                                  ),
                                                                                              ],)),
                                                                                          ),                 
                                                                                        ],
                                                                                      ),
                                                                                )])  
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      ]),),
                                                              ]),
                                                            ),
                                                          ]))));
                                        }),
                                      ),
                                    ),
                                  );
                                }).whenComplete(() async {
                              // showFloatingActionButton(true);
                              await Future.delayed(Duration(milliseconds: 500));
                              _tabController.index = 0;
                              isClickedOn = false;
                              height = 300;
                            });
                          
                                    },
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

