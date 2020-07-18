import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';
import 'package:flutter/material.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';

class DjezzyOffersTest extends StatefulWidget {
  static const tag = '/DjezzyOffersTest';
  @override
  _DjezzyOffersTestState createState() => _DjezzyOffersTestState();
}

class _DjezzyOffersTestState extends State<DjezzyOffersTest> {
  int selectedPos = 1;
  static List<DjezzyInternet> mListings;
  static List<DjezzyImtiyaz> mListings2;
  static List<DjezzyRoaming> mListings3;

  // static final internetMap = mListings.asMap();
  // final myInternet = internetMap[8];

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
    double c_width = MediaQuery.of(context).size.width / 5;
    final double itemHeight = 80;
    final double itemWidth = 82;

    final internetAll = GridView.builder(
      physics: new NeverScrollableScrollPhysics(),
      itemCount: mListings.length,
      // primary: true,
      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
            child: Container(
              decoration: BoxDecoration(
                  color: colorPrimary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        spreadRadius: 0.75,
                        blurRadius: 4,
                        offset: Offset(0, 1))
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 11,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: mListings[index] == mListings.last
                              ? colorPrimary_light
                              : colorAccent2,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0))),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Container(
                                  width: c_width,
                                  child: Text(mListings[index].internet,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              mListings[index] == mListings.last
                                                  ? colorPrimary_light
                                                  : colorAccent,
                                          fontSize:
                                              mListings[index] == mListings.last
                                                  ? 14
                                                  : 18))))
                        ]),
                    mListings[index] == mListings.last
                        ? SizedBox(height: 4)
                        : SizedBox(height: 8),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextSized(
                              delay: mListings[index].delay,
                              price: mListings[index].price,
                              textStyle: TextStyle(
                                  color: colorPrimary_light, fontSize: 12),
                              selected: selectedPos)
                        ]),
                  ]),
            ));
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: itemWidth / itemHeight,
          mainAxisSpacing: 4,
          crossAxisSpacing: 0),
    );
/*   cards for imtiyaz ************************************************* */
    final imtiyazAll = Container(
      // margin: EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: mListings2.length,
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Imtiyaz(mListings2[index], index, selectedPos);
          }),
    );
/*  cards for imtiyaz ************************************************* */
    final roamingAll = Container(
      // margin: EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: mListings2.length,
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Roaming(mListings3[index], index, selectedPos);
          }),
    );

    changeStatusColor(Colors.black);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: addLeadingIcon(),
        titleSpacing: -8,
        title: Text('Bonjour!',
            style: TextStyle(
                color: colorPrimary_light,
                fontFamily: fontRegular,
                fontSize: 14.5)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
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
                        : selectedPos == 2 ? imtiyazAll : roamingAll,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Imtiyaz extends StatelessWidget {
  DjezzyImtiyaz model;
  int pos;
  int selectedPos;
  Imtiyaz(DjezzyImtiyaz model, int pos, int selectedPos) {
    this.model = model;
    this.pos = pos;
    this.selectedPos = selectedPos;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
      child: Container(
        width: 350,
        height: 85,
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
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 1) // changes position of shadow
                  )
            ]),
        child: Row(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: 10,
              decoration: BoxDecoration(
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
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(children: <Widget>[
                          Image.asset(model.imgoffre1,
                              height: 22, width: 22, color: colorPrimary_light),
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
                        ]),
                      ),
                      Expanded(
                        flex: pos == 0 ? 0 : 1,
                        child: Column(children: <Widget>[
                          Image.asset(model.imgoffre2,
                              height: pos == 0 ? 0 : 22,
                              width: pos == 0 ? 0 : 22,
                              color: colorPrimary_light),
                          SizedBox(height: 7),
                          Container(
                              width: pos == 0 ? 0 : 60,
                              child: Text(model.offre2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: textSizeSMedium,
                                      color: colorPrimary_dark)))
                        ]),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Image.asset(model.imgoffre3,
                                height: 22,
                                width: 22,
                                color: colorPrimary_light),
                            SizedBox(height: 7),
                            Container(
                              width: 60,
                              child: Text(
                                model.offre3,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: textSizeSMedium,
                                    color: colorPrimary_dark),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
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
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class Roaming extends StatelessWidget {
  DjezzyRoaming model;
  int pos;
  int selectedPos;
  Roaming(DjezzyRoaming model, int pos, int selectedPos) {
    this.model = model;
    this.pos = pos;
    this.selectedPos = selectedPos;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
      child: Container(
        width: 350,
        height: 85,
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
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 1) // changes position of shadow
                  )
            ]),
        child: Row(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: 10,
              decoration: BoxDecoration(
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
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(children: <Widget>[
                          Image.asset(model.imgoffre1,
                              height: 22, width: 22, color: colorPrimary_light),
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
                        ]),
                      ),
                      Expanded(
                        flex: pos == 0 ? 0 : 1,
                        child: Column(children: <Widget>[
                          Image.asset(model.imgoffre2,
                              height: pos == 0 ? 0 : 22,
                              width: pos == 0 ? 0 : 22,
                              color: colorPrimary_light),
                          SizedBox(height: 7),
                          Container(
                              width: pos == 0 ? 0 : 60,
                              child: Text(model.offre2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: textSizeSMedium,
                                      color: colorPrimary_dark)))
                        ]),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Image.asset(model.imgoffre3,
                                height: 22,
                                width: 22,
                                color: colorPrimary_light),
                            SizedBox(height: 7),
                            Container(
                              width: 60,
                              child: Text(
                                model.offre3,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: textSizeSMedium,
                                    color: colorPrimary_dark),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
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
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
