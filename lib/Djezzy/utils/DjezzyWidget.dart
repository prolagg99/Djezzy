import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:flutter/material.dart';

// class TopBar extends StatefulWidget {
//   var titleName;

//   TopBar(var this.titleName);
//   @override
//   _TopBarState createState() => _TopBarState();
// }

// class _TopBarState extends State<TopBar> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 60,
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.cancel,
//             ),
//             Container(
//               padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//               child: Text(
//                 widget.titleName,
//                 style: TextStyle(
//                   fontFamily: fontMedium,
//                   fontSize: textSizeLargeMedium,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

AppBar appBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    leading: addLeadingIcon(),
    titleSpacing: -8,
    title: Text(
      'Hello!',
      style: TextStyle(
        color: colorPrimary_light,
        fontFamily: fontRegular,
        fontSize: 14.5,
      ),
    ),
  );
}

Widget addLeadingIcon() {
  return new Container(
    padding: const EdgeInsets.fromLTRB(9.5, 0.0, 0.0, 0.0),
    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    child: new Stack(
      alignment: AlignmentDirectional.centerStart,
      children: <Widget>[
        new Image.asset(
          logo_djezzy4,
          width: 32.0,
          height: 32.0,
        ),
      ],
    ),
  );
}

showBottomSheetImtiyaz(context) async {
  var w = MediaQuery.of(context).size.width;
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
          width: w,
          height: w * 0.7,
          decoration: BoxDecoration(
            color: colorPrimary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0),
              topRight: const Radius.circular(18.0),
            ),
          ),
          child: Row(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  width: 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0)),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [colorAccent, colorAccent2]))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(32, 2, 48, 0),
                  child: Container(
                      width: 265,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('1000 DA TOUS + 3Go',
                              style: TextStyle(
                                  color: colorPrimary_dark,
                                  // fontFamily: fontMedium,
                                  fontSize: 18)),
                          Column(
                            children: <Widget>[
                              Text('3 Gb',
                                  style: TextStyle(
                                      color: colorAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22)),
                              SizedBox(height: 5),
                              Text('Internet',
                                  style: TextStyle(
                                      color: colorAccent, fontSize: 18)),
                              Container(
                                  height: 1.5,
                                  width: 30,
                                  color: colorPrimary_light),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('1000 DA',
                                  style: TextStyle(
                                      color: colorPrimary_light,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text('Credit',
                                  style: TextStyle(
                                      color: colorPrimary_light, fontSize: 16)),
                              Container(
                                  height: 1.5,
                                  width: 30,
                                  color: colorPrimary_light)
                            ],
                          ),
                          // SizedBox(height: 4),
                          Column(
                            children: <Widget>[
                              Text('For 190 DA / 24 Hours',
                                  style: TextStyle(
                                      color: colorPrimary_light, fontSize: 16)),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                  height: 1,
                                  width: 320,
                                  color: colorPrimary_light),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('CANCEL',
                                      style: TextStyle(
                                          color: colorPrimary_light,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  Text('ACTIVATE',
                                      style: TextStyle(
                                          color: colorAccentGreen,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15))
                                ],
                              ))
                        ],
                      )))
            ],
          ));
    },
  );
}

showBottomSheetInternet(context, DjezzyInternet model, DjezzyInternet pos) {
  var w = MediaQuery.of(context).size.width;

  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
          width: w,
          height: w * 0.355,
          decoration: BoxDecoration(
            color: colorPrimary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0),
              topRight: const Radius.circular(18.0),
            ),
          ),
          child: Row(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  width: 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0)),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [colorAccent, colorAccent2]))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(32, 11, 48, 11),
                  child: Container(
                      width: 265,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: model == pos
                                ? Text(model.internet,
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18))
                                : Text(
                                    model.delay.contains('30')
                                        ? 'Internet Month ' + model.internet
                                        : model.delay.contains('7')
                                            ? 'Internet Week ' + model.internet
                                            : 'Internet Day ' + model.internet,
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18)),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Text(
                                    model == pos
                                        ? 'For ' +
                                            model.price.substring(
                                                0, model.price.length - 4)
                                        : 'For ' +
                                            model.price +
                                            ' / ' +
                                            model.delay,
                                    style: TextStyle(
                                        color: colorPrimary_light,
                                        fontSize: 16)),
                                SizedBox(height: 4),
                                Container(
                                    height: 1,
                                    width: 320,
                                    color: colorPrimary_light),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('CANCEL',
                                        style: TextStyle(
                                            color: colorPrimary_light,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text('ACTIVATE',
                                        style: TextStyle(
                                            color: colorAccentGreen,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))
                                  ],
                                )),
                          )
                        ],
                      )))
            ],
          ));
    },
  );
}

showBottomSheetRoaming(
    context, DjezzyRoaming model, DjezzyRoaming lastPos, int pos) {
  var w = MediaQuery.of(context).size.width;

  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
          width: w,
          height: w * 0.54,
          decoration: BoxDecoration(
            color: colorPrimary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0),
              topRight: const Radius.circular(18.0),
            ),
          ),
          child: Row(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  width: 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0)),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [colorAccent, colorAccent2]))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(32, 11, 48, 11),
                  child: Container(
                      width: 265,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(model.roaming,
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 18)),
                          ),
                          Expanded(flex: 1, child: Text('100 Mb')),
                          Column(
                            children: <Widget>[
                              Text('Internet',
                                  style: TextStyle(
                                      color: colorAccent, fontSize: 18)),
                              Container(
                                  height: 1.5,
                                  width: 30,
                                  color: colorPrimary_light),
                            ],
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Text(
                                    model == lastPos
                                        ? 'For ' +
                                            model.price.substring(
                                                0, model.price.length - 4)
                                        : 'For ' +
                                            model.price +
                                            ' / ' +
                                            model.delay,
                                    style: TextStyle(
                                        color: colorPrimary_light,
                                        fontSize: 16)),
                                SizedBox(height: 4),
                                Container(
                                    height: 1,
                                    width: 320,
                                    color: colorPrimary_light),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('CANCEL',
                                        style: TextStyle(
                                            color: colorPrimary_light,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text('ACTIVATE',
                                        style: TextStyle(
                                            color: colorAccentGreen,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))
                                  ],
                                )),
                          )
                        ],
                      )))
            ],
          ));
    },
  );
}

BoxDecoration boxDecoration() {
  return new BoxDecoration(
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
      ]);
}

// BoxDecoration boxDecorationInternet() {
//   return BoxDecoration(
//       color: colorPrimary,
//       borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(10),
//           topRight: Radius.circular(10),
//           bottomLeft: Radius.circular(10),
//           bottomRight: Radius.circular(10)),
//       boxShadow: [
//         BoxShadow(
//             color: Colors.black.withOpacity(0.12),
//             spreadRadius: 0.75,
//             blurRadius: 4,
//             offset: Offset(0, 1))
//       ]);
// }

Widget topContainerOfCard(DjezzyInternet index, DjezzyInternet pos) {
  // mListings[index] == mListings.last EQUAL TO -> index == pos
  return Container(
    height: 11,
    width: double.infinity,
    decoration: BoxDecoration(
        color: index == pos ? colorPrimary_light : colorAccent2,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0))),
  );
}

Widget leftContainerOfCard() {
  return Container(
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
  );
}

class TextSized extends StatelessWidget {
  final String delay;
  final String price;
  final TextStyle textStyle;
  final int selected;
  TextSized({this.delay, this.price, this.textStyle, this.selected});

  @override
  Widget build(BuildContext context) {
    final Size txtSizeDelay = _textSize(delay, textStyle);
    final Size txtSizePrice = _textSize(price, textStyle);

    // This kind of use - meaningless. It's just an example.
    return Column(
      children: <Widget>[
        Text(
          selected == 1 ? delay : price,
          style: selected == 1
              ? TextStyle(color: colorPrimary_light, fontSize: 12)
              : TextStyle(
                  fontSize: textSizeMedium,
                  fontFamily: fontBold,
                  color: colorPrimary_dark),
        ),
        Container(
          height: 1,
          width: selected == 1
              ? (txtSizeDelay.width < txtSizePrice.width
                  ? txtSizePrice.width
                  : txtSizeDelay.width)
              : txtSizePrice.width,
          color: colorPrimary_light,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          selected == 1 ? price : delay,
          style: selected == 1
              ? textStyle
              : TextStyle(
                  color: colorAccentGreen,
                  fontSize: textSizeSmall,
                ),
        ),
      ],
    );
  }

  // Here it is!
  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
