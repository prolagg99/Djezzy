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
  // static final internetMap = mListings.asMap();
  // final myInternet = internetMap[8];

  @override
  void initState() {
    super.initState();
    selectedPos = 1;
    mListings = getInternet();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      spreadRadius: 0.75,
                      blurRadius: 4,
                      offset: Offset(0, 1)),
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
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        width: c_width,
                        child: Text(
                          mListings[index].internet,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: mListings[index] == mListings.last
                                ? colorPrimary_light
                                : colorAccent,
                            fontSize:
                                mListings[index] == mListings.last ? 14 : 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                mListings[index] == mListings.last
                    ? SizedBox(
                        height: 4,
                      )
                    : SizedBox(
                        height: 8,
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextSized(
                      delay: mListings[index].delay,
                      price: mListings[index].price,
                      textStyle: TextStyle(
                        color: colorPrimary_light,
                        // fontWeight: FontWeight.bold,
                        // fontFamily: fontRegular,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: itemWidth / itemHeight,
          mainAxisSpacing: 4,
          crossAxisSpacing: 0),
    );
    final internetAll3 = GridView.builder(
      physics: new NeverScrollableScrollPhysics(),
      itemCount: mListings.length,
      // primary: true,
      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      spreadRadius: 0.75,
                      blurRadius: 4,
                      offset: Offset(0, 1)),
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
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        width: c_width,
                        child: Text(
                          mListings[index].internet,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: mListings[index] == mListings.last
                                ? colorPrimary_light
                                : colorAccent,
                            fontSize:
                                mListings[index] == mListings.last ? 14 : 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                mListings[index] == mListings.last
                    ? SizedBox(
                        height: 4,
                      )
                    : SizedBox(
                        height: 8,
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextSized(
                      delay: mListings[index].delay,
                      price: mListings[index].price,
                      textStyle: TextStyle(
                        color: colorPrimary_light,
                        // fontWeight: FontWeight.bold,
                        // fontFamily: fontRegular,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: itemWidth / itemHeight,
          mainAxisSpacing: 4,
          crossAxisSpacing: 0),
    );
    final internetAll2 = GridView.builder(
      physics: new NeverScrollableScrollPhysics(),
      itemCount: mListings.length,
      // primary: true,
      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      spreadRadius: 0.75,
                      blurRadius: 4,
                      offset: Offset(0, 1)),
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
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        width: c_width,
                        child: Text(
                          mListings[index].internet,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: mListings[index] == mListings.last
                                ? colorPrimary_light
                                : colorAccent,
                            fontSize:
                                mListings[index] == mListings.last ? 14 : 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                mListings[index] == mListings.last
                    ? SizedBox(
                        height: 4,
                      )
                    : SizedBox(
                        height: 8,
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextSized(
                      delay: mListings[index].delay,
                      price: mListings[index].price,
                      textStyle: TextStyle(
                        color: colorPrimary_light,
                        // fontWeight: FontWeight.bold,
                        // fontFamily: fontRegular,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: itemWidth / itemHeight,
          mainAxisSpacing: 4,
          crossAxisSpacing: 0),
    );
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
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.sp,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 82,
                    height: 22.0,
                    child: RaisedButton(
                      padding: const EdgeInsets.all(6.0),
                      // textColor: Colors.white,
                      color: colorPrimary,
                      onPressed: () {
                        setState(() {
                          selectedPos = 1;
                        });
                        // TextSized();
                      },
                      child: new Text(
                        "Internet",
                        style: TextStyle(
                          fontSize: 11.5,
                          fontFamily: fontMedium,
                          // color: colorPrimary_light
                          color: selectedPos == 1
                              ? colorAccent
                              : colorPrimary_light,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: selectedPos == 1
                                ? colorAccent
                                : colorPrimary_light,
                          )),
                    ),
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
                        // TextSized();
                      },
                      child: new Text(
                        "Imtiyaz",
                        style: TextStyle(
                          fontSize: 11.5,
                          fontFamily: fontMedium,
                          color: selectedPos == 2
                              ? colorAccent
                              : colorPrimary_light,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: selectedPos == 2
                                ? colorAccent
                                : colorPrimary_light,
                          )),
                    ),
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
                        // TextSized();
                      },
                      child: new Text(
                        "Roaming",
                        style: TextStyle(
                          fontSize: 11.5,
                          fontFamily: fontMedium,
                          color: selectedPos == 3
                              ? colorAccent
                              : colorPrimary_light,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: selectedPos == 3
                                ? colorAccent
                                : colorPrimary_light,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                child: Container(
                  height: 458,
                  child: selectedPos == 1
                      ? internetAll
                      : selectedPos == 2 ? internetAll2 : internetAll3,
                )),
          ],
        ),
      ),
    );
  }
}
