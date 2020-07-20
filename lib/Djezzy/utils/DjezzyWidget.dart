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

showBottomSheetInternet(
    context, DjezzyInternet model, DjezzyInternet lastPos) async {
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
                            child: model == lastPos
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

showBottomSheetImtiyaz(context, DjezzyImtiyaz model) async {
  var w = MediaQuery.of(context).size.width;
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
          width: w,
          height: model.numberOffers == '2'
              ? w * 0.7
              : model.numberOffers == '3' ? w * 0.86 : w * 1.02,
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
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: Container(
                      width: 345,
                      // width: double.infinity,
                      // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(model.details,
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 18)),
                          ),

                          // SizedBox(height: 0),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(34, 0, 48, 0),
                            child: Column(
                              children: <Widget>[
                                Text(model.offre1,
                                    style: TextStyle(
                                        color: Colors.red[600],
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 2),
                                Text(
                                    model.offre1.contains('Gb')
                                        ? 'Internet'
                                        : 'Credit',
                                    style: TextStyle(
                                        color: Colors.red[600], fontSize: 18)),
                                Container(
                                    height: 1.5,
                                    width: 30,
                                    color: colorPrimary_light),
                                SizedBox(height: 14),
                              ],
                            ),
                          ),

                          // for offer 2
                          Padding(
                            padding: const EdgeInsets.fromLTRB(34, 0, 48, 0),
                            child: Column(
                              children: <Widget>[
                                Text(model.offre2,
                                    style: TextStyle(
                                        color: colorPrimary_light,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 2),
                                Text(
                                    model.offre2.contains('DA')
                                        ? 'Credit'
                                        : 'Unlimited calls to Djezzy',
                                    style: TextStyle(
                                        color: colorPrimary_light,
                                        fontSize: 16)),
                                Container(
                                    height: 1.5,
                                    width: 30,
                                    color: colorPrimary_light),
                                SizedBox(height: 12),
                              ],
                            ),
                          ),

                          // for offer num 3
                          model.numberOffers == '3' || model.numberOffers == '4'
                              ? Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(34, 0, 48, 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text(model.offre3,
                                          style: TextStyle(
                                              color: colorPrimary_light,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 2),
                                      Text(
                                          model.numberOffers == '3'
                                              ? 'SMS Unlimited to Djezzy'
                                              : 'Unlimited calls to Djezzy',
                                          style: TextStyle(
                                              color: colorPrimary_light,
                                              fontSize: 16)),
                                      Container(
                                          height: 1.5,
                                          width: 30,
                                          color: colorPrimary_light),
                                      SizedBox(height: 12),
                                    ],
                                  ),
                                )
                              : SizedBox(height: 0, width: 0),
                          // for offer num 4
                          model.numberOffers == '4'
                              ? Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(34, 0, 48, 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text(model.offre3,
                                          style: TextStyle(
                                              color: colorPrimary_light,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 2),
                                      Text('SMS Unlimited to Djezzy',
                                          style: TextStyle(
                                              color: colorPrimary_light,
                                              fontSize: 16)),
                                      Container(
                                          height: 1.5,
                                          width: 30,
                                          color: colorPrimary_light),
                                      SizedBox(height: 12),
                                    ],
                                  ),
                                )
                              : SizedBox(height: 0, width: 0),

                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(34, 0, 48, 0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      'For ' +
                                          model.price +
                                          ' / ' +
                                          model.delay,
                                      style: TextStyle(
                                          color: colorPrimary_light,
                                          fontSize: 16)),
                                  SizedBox(height: 6),
                                  Container(
                                      height: 1,
                                      width: 320,
                                      color: colorPrimary_light),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(46, 6, 58, 6),
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
    context, DjezzyRoaming model, DjezzyRoaming lastPos) async {
  var w = MediaQuery.of(context).size.width;

  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
          width: w,
          height: model == lastPos ? w * 0.86 : w * 0.54,
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
                  padding: const EdgeInsets.fromLTRB(32, 12, 48, 12),
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
                          SizedBox(height: 0),
                          // for offer num 1
                          Column(
                            children: <Widget>[
                              Text(model.offre1,
                                  style: TextStyle(
                                      color: Colors.red[600],
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 4),
                              Text(model == lastPos ? 'Internet' : model.type,
                                  style: TextStyle(
                                      color: Colors.red[600], fontSize: 18)),
                              Container(
                                  height: 1.5,
                                  width: 30,
                                  color: colorPrimary_light),
                            ],
                          ),
                          SizedBox(height: 12),
                          // for offer num 2
                          model == lastPos
                              ? Column(
                                  children: <Widget>[
                                    Text(model.offre2,
                                        style: TextStyle(
                                            color: colorPrimary_light,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 2),
                                    Text('Calls',
                                        style: TextStyle(
                                            color: colorPrimary_light,
                                            fontSize: 16)),
                                    Container(
                                        height: 1.5,
                                        width: 30,
                                        color: colorPrimary_light),
                                    SizedBox(height: 12),
                                  ],
                                )
                              : SizedBox(height: 0, width: 0),

                          // for offer num 3
                          model == lastPos
                              ? Column(
                                  children: <Widget>[
                                    Text(model.offre3,
                                        style: TextStyle(
                                            color: colorPrimary_light,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 2),
                                    Text('SMS',
                                        style: TextStyle(
                                            color: colorPrimary_light,
                                            fontSize: 16)),
                                    Container(
                                        height: 1.5,
                                        width: 30,
                                        color: colorPrimary_light),
                                    SizedBox(height: 12),
                                  ],
                                )
                              : SizedBox(height: 0, width: 0),

                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Text('For ' + model.price + ' / ' + model.delay,
                                    style: TextStyle(
                                        color: colorPrimary_light,
                                        fontSize: 16)),
                                SizedBox(height: 6),
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
                                    const EdgeInsets.fromLTRB(10, 6, 10, 6),
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
