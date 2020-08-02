import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:flutter/material.dart';

class DjezzyPrimary extends StatefulWidget {
  static String tag = '/DjezzyPrimary';
  @override
  _DjezzyPrimaryState createState() => _DjezzyPrimaryState();
}

class _DjezzyPrimaryState extends State<DjezzyPrimary> {
  List<DjezzyPrimarySchool> mListings;

  @override
  void initState() {
    super.initState();
    mListings = getPrimaryLevel();
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
        body: Padding(
          padding: const EdgeInsets.only(top: 2,bottom: 2),
          child: Container(
            child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mListings.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return PrimaryCard(mListings[index], index, mListings.first, mListings.last);
                  }),
            ),
          ),
        )
        ),);
  }
}

class PrimaryCard extends StatelessWidget {
  DjezzyPrimarySchool model;
  int index;
  DjezzyPrimarySchool first;
  DjezzyPrimarySchool last;
  PrimaryCard(
      DjezzyPrimarySchool model, int index, DjezzyPrimarySchool first, DjezzyPrimarySchool last) {
    this.model = model;
    this.index = index;
    this.first = first;
    this.last = last;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: first == model ?  const EdgeInsets.fromLTRB(10,8,10,10): 
          last == model ?  const EdgeInsets.fromLTRB(10,0,10,8) : 
          const EdgeInsets.fromLTRB(10,0,10,10),
          child: Stack(
          children: <Widget>[
          new Container(
            height: 120,
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage(img_primary), fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(6)
            ),
          ),
          Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(6.0),
                        bottomRight: const Radius.circular(6.0),
                      ),
                    ),
                    child: new Center(
                      child: new Text(model.level, style: TextStyle(color: Colors.white),),
                    ),
                ),
              ]),
          )
      ],
    ));
  }
}
