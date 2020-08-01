import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:flutter/material.dart';

class DjezzyEmergency extends StatefulWidget {
  static String tag = '/DjezzyEmergency';
  @override
  _DjezzyEmergencyState createState() => _DjezzyEmergencyState();
}

class _DjezzyEmergencyState extends State<DjezzyEmergency> {
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
            'Numéro d\'urgence',
            style: TextStyle(
              color: colorPrimary_light,
              fontFamily: fontRegular,
              fontSize: 14.5,
            ),
          )),
        body: Padding(
          padding: const EdgeInsets.only(top: 2,bottom: 2),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: mListings.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return EmergecyCard(
                      mListings[index], index, mListings.first, mListings.last);
                }),
          ),
        )
        ),);
  }
}

class EmergecyCard extends StatelessWidget {
  DjezzyEmergecyCall model;
  DjezzyEmergecyCall first;
  DjezzyEmergecyCall last;
  int index;
  EmergecyCard(
      DjezzyEmergecyCall model, int index, DjezzyEmergecyCall first, DjezzyEmergecyCall last) {
    this.model = model;
    this.index = index;
    this.first = first;
    this.last = last;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: first == model ?  const EdgeInsets.fromLTRB(25,12,25,18): 
      last == model ?  const EdgeInsets.fromLTRB(25,0,25,12) : 
      const EdgeInsets.fromLTRB(25,0,25,18),
      child: Container(
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
              model.title,
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
    );
  }
}
