import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:flutter/material.dart';

class DjezzyPrimary extends StatefulWidget {
  static String tag = '/DjezzyPrimary';
  @override
  _DjezzyPrimaryState createState() => _DjezzyPrimaryState();
}

class _DjezzyPrimaryState extends State<DjezzyPrimary> {
  List<DjezzyEmergecyCall> mListings;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mListings = getEmergecy();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leading: Container(
            child: new Stack(
              alignment: AlignmentDirectional.centerStart,
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      back(context);
                    },
                    icon: Icon(Icons.arrow_back, color: colorPrimary_light))
              ],
            ),
          ),
          titleSpacing: -10,
          title: Text(
            'Enseignement primaire',
            style: TextStyle(
              color: colorPrimary_light,
              fontFamily: fontRegular,
              fontSize: 14.5,
            ),
          )),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 1,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return EmergecyCard();
            })
        ),);
  }
}

class EmergecyCard extends StatelessWidget {
  // DjezzyEmergecyCall model;
  // int index;
  // EmergecyCard(
  //     DjezzyEmergecyCall model, int index) {
  //   this.model = model;
  //   this.index = index;
  // }
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 16),
          child: Column(
            children: <Widget>[
              Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: boxDecoration(),
            child: Row(children: <Widget>[
              leftContainerOfCard(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Expanded(
                  flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 60,
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left : 4.0),
                        child: Text('Contacter', style: TextStyle(color: colorPrimary_light)),
                      )
                  ],),
                    ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                    Text(
                      'Cellule d\'information sur le Coronavirus',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.5,))
                  ],),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 60,
                  child: Padding(
                    padding: const EdgeInsets.only(right : 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                      Text('APPELER', style: TextStyle(color: colorAccentGreen, fontSize: 13,fontFamily: fontSemibold),),
                      Icon(Icons.keyboard_arrow_right,color: colorAccentGreen)
                    ],),
                  ),
                    ),
                ),
              ],)
            ]),
          ),
            ],
          ),
        );
  }
}
