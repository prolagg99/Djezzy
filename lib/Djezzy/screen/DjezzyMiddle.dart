import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:flutter/material.dart';

class DjezzyMiddle extends StatefulWidget {
  static String tag = '/DjezzyMiddle';
  @override
  _DjezzyMiddleState createState() => _DjezzyMiddleState();
}

class _DjezzyMiddleState extends State<DjezzyMiddle> {
  List<DjezzyMiddleSchool> mListings;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mListings = getMiddleLevel();
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
            'Enseignement moyen',
            style: TextStyle(
              color: colorPrimary_light,
              fontFamily: fontRegular,
              fontSize: 14.5,
            ),
          )),
        body: Padding(
          padding: const EdgeInsets.only(top: 2,bottom: 2),
          child: Container(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: mListings.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MiddleCard(mListings[index], index, mListings.first, mListings.last);
                }),
          ),
        )
        ),);
  }
}

class MiddleCard extends StatelessWidget {
  DjezzyMiddleSchool model;
  int index;
  DjezzyMiddleSchool first;
  DjezzyMiddleSchool last;
  MiddleCard(
      DjezzyMiddleSchool model, int index, DjezzyMiddleSchool first, DjezzyMiddleSchool last) {
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
              image: new DecorationImage(image: new AssetImage(img_middle), fit: BoxFit.cover,),
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
