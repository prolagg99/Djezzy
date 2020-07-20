import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';
import 'package:flutter/material.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';

class DjezzyOffers extends StatefulWidget {
  static const tag = '/DjezzyOffers';
  @override
  _DjezzyOffersState createState() => _DjezzyOffersState();
}

class _DjezzyOffersState extends State<DjezzyOffers> {
  int selectedPos = 1;
  static List<DjezzyInternet> mListings;
  static List<DjezzyImtiyaz> mListings2;
  static List<DjezzyRoaming> mListings3;

  @override
  void initState() {
    super.initState();
    selectedPos = 1;
    mListings = getInternet();
    mListings2 = getImtiyaz();
    mListings3 = getRoaming();
  }

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 80;
    final double itemWidth = 82;

    /* card of internet *********************************************** */
    final internetAll = GridView.builder(
      physics: new NeverScrollableScrollPhysics(),
      itemCount: mListings.length,
      itemBuilder: (context, index) {
        return Internet(mListings[index], mListings.last, selectedPos);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: itemWidth / itemHeight,
          mainAxisSpacing: 4,
          crossAxisSpacing: 0),
    );
    /* card of imtiyaz ************************************************* */
    final imtiyazAll = Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: mListings2.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Imtiyaz(
                  mListings2[index], index, mListings2.last, selectedPos);
            }));
    /* cards of imtiyaz ************************************************* */
    final roamingAll = Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: mListings2.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Roaming(mListings3[index], mListings3.last, selectedPos);
            }));

    changeStatusColor(Colors.black);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(),
        body: SafeArea(
            child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 82,
                    height: 22.0,
                    child: RaisedButton(
                        padding: const EdgeInsets.all(6.0),
                        color: colorPrimary,
                        onPressed: () {
                          setState(() {
                            selectedPos = 1;
                          });
                        },
                        child: new Text("Internet",
                            style: TextStyle(
                                fontSize: 11.5,
                                fontFamily: fontMedium,
                                color: selectedPos == 1
                                    ? colorAccent
                                    : colorPrimary_light)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                color: selectedPos == 1
                                    ? colorAccent
                                    : colorPrimary_light))),
                  ),
                  SizedBox(width: 4),
                  ButtonTheme(
                    minWidth: 82,
                    height: 22.0,
                    child: RaisedButton(
                        padding: const EdgeInsets.all(6.0),
                        textColor: Colors.white,
                        color: colorPrimary,
                        onPressed: () {
                          setState(() {
                            selectedPos = 2;
                          });
                        },
                        child: new Text("Imtiyaz",
                            style: TextStyle(
                                fontSize: 11.5,
                                fontFamily: fontMedium,
                                color: selectedPos == 2
                                    ? colorAccent
                                    : colorPrimary_light)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                color: selectedPos == 2
                                    ? colorAccent
                                    : colorPrimary_light))),
                  ),
                  SizedBox(width: 4),
                  ButtonTheme(
                      minWidth: 82,
                      height: 22.0,
                      child: RaisedButton(
                          padding: const EdgeInsets.all(6.0),
                          textColor: Colors.white,
                          color: colorPrimary,
                          onPressed: () {
                            setState(() {
                              selectedPos = 3;
                            });
                          },
                          child: new Text("Roaming",
                              style: TextStyle(
                                  fontSize: 11.5,
                                  fontFamily: fontMedium,
                                  color: selectedPos == 3
                                      ? colorAccent
                                      : colorPrimary_light)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: selectedPos == 3
                                      ? colorAccent
                                      : colorPrimary_light)))),
                ]),
          ),
          SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  child: Container(
                      height: 458,
                      child: selectedPos == 1
                          ? internetAll
                          : selectedPos == 2 ? imtiyazAll : roamingAll))),
        ])));
  }
}

class Internet extends StatelessWidget {
  DjezzyInternet model;
  DjezzyInternet lastPos;
  int selectedPos;

  Internet(DjezzyInternet model, DjezzyInternet lastPos, int selectedPos) {
    this.model = model;
    this.lastPos = lastPos;
    this.selectedPos = selectedPos;
  }
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width / 5;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
        child: InkWell(
          onTap: () {
            showBottomSheetInternet(context, model, lastPos);
          },
          child: Container(
            decoration: boxDecoration(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  topContainerOfCard(model, lastPos),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                                width: c_width,
                                child: Text(model.internet,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: model == lastPos
                                            ? colorPrimary_light
                                            : Colors.red[600],
                                        fontSize: model == lastPos ? 14 : 18))))
                      ]),
                  model == lastPos ? SizedBox(height: 4) : SizedBox(height: 8),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextSized(
                            delay: model.delay,
                            price: model.price,
                            textStyle: TextStyle(
                                color: colorPrimary_light, fontSize: 12),
                            selected: selectedPos)
                      ]),
                ]),
          ),
        ));
  }
}

class Imtiyaz extends StatelessWidget {
  DjezzyImtiyaz model;
  DjezzyImtiyaz lastPos;
  int pos;
  int selectedPos;
  Imtiyaz(
      DjezzyImtiyaz model, int pos, DjezzyImtiyaz lastPos, int selectedPos) {
    this.model = model;
    this.pos = pos;
    this.lastPos = lastPos;
    this.selectedPos = selectedPos;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
        child: InkWell(
          onTap: () {
            showBottomSheetImtiyaz(context, model);
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(model.imtiyaz,
                              style: TextStyle(
                                  fontSize: textSizeMedium,
                                  fontFamily: fontBold,
                                  color: colorPrimary_dark)),
                          Row(children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Column(children: <Widget>[
                                  Image.asset(model.imgoffre1,
                                      height: 22,
                                      width: 22,
                                      color: colorPrimary_light),
                                  SizedBox(height: 7),
                                  Container(
                                      width: 54,
                                      child: Text(model.offre1,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: textSizeSMedium,
                                              color: colorPrimary_dark)))
                                ])),
                            Expanded(
                              flex: 1,
                              child: Column(children: <Widget>[
                                Image.asset(model.imgoffre2,
                                    height: 22,
                                    width: 22,
                                    color: colorPrimary_light),
                                SizedBox(height: 7),
                                Container(
                                    width: 60,
                                    child: Text(model.offre2,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: textSizeSMedium,
                                            color: colorPrimary_dark)))
                              ]),
                            ),
                            Expanded(
                                flex: pos == 0 ? 0 : 1,
                                child: Column(children: <Widget>[
                                  Image.asset(model.imgoffre3,
                                      height: pos == 0 ? 0 : 22,
                                      width: pos == 0 ? 0 : 22,
                                      color: colorPrimary_light),
                                  SizedBox(height: 7),
                                  Container(
                                      width: pos == 0 ? 0 : 60,
                                      child: Text(model.offre3,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: textSizeSMedium,
                                              color: colorPrimary_dark)))
                                ]))
                          ])
                        ])),
                Expanded(
                    flex: 1,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextSized(
                              delay: model.delay,
                              price: model.price,
                              textStyle: TextStyle(
                                  fontSize: textSizeMedium,
                                  fontFamily: fontBold,
                                  color: colorPrimary_dark),
                              selected: selectedPos)
                        ]))
              ])),
        ));
  }
}

class Roaming extends StatelessWidget {
  DjezzyRoaming model;
  DjezzyRoaming lastPos;
  int selectedPos;

  Roaming(DjezzyRoaming model, DjezzyRoaming lastPos, int selectedPos) {
    this.model = model;
    this.lastPos = lastPos;
    this.selectedPos = selectedPos;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
        child: InkWell(
          onTap: () {
            showBottomSheetRoaming(context, model, lastPos);
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(model.roaming,
                          style: TextStyle(
                              fontSize: textSizeMedium,
                              fontFamily: fontBold,
                              color: colorPrimary_dark)),
                      Row(children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Column(children: <Widget>[
                              Image.asset(model.imgoffre1,
                                  height: 22,
                                  width: 22,
                                  color: colorPrimary_light),
                              SizedBox(height: 7),
                              Container(
                                  width: 54,
                                  child: Text(
                                    model.offre1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: textSizeSMedium,
                                        color: colorPrimary_dark),
                                  ))
                            ])),
                        model == lastPos
                            ? Expanded(
                                flex: 1,
                                child: Column(children: <Widget>[
                                  Image.asset(model.imgoffre2,
                                      height: 22,
                                      width: 22,
                                      color: colorPrimary_light),
                                  SizedBox(height: 7),
                                  Container(
                                      width: 60,
                                      child: Text(model.offre2,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: textSizeSMedium,
                                              color: colorPrimary_dark)))
                                ]))
                            : Container(width: 0, height: 0),
                        model == lastPos
                            ? Expanded(
                                flex: 1,
                                child: Column(children: <Widget>[
                                  Image.asset(model.imgoffre3,
                                      height: 22,
                                      width: 22,
                                      color: colorPrimary_light),
                                  SizedBox(height: 7),
                                  Container(
                                      width: 60,
                                      child: Text(model.offre3,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: textSizeSMedium,
                                              color: colorPrimary_dark)))
                                ]))
                            : Container(height: 0, width: 0)
                      ])
                    ]),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextSized(
                            delay: model.delay,
                            price: model.price,
                            textStyle: TextStyle(
                                fontSize: textSizeMedium,
                                fontFamily: fontBold,
                                color: colorPrimary_dark),
                            selected: selectedPos)
                      ]))
            ]),
          ),
        ));
  }
}
