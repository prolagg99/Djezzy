import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:dots_indicator/dots_indicator.dart';
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

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

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

DotsIndicator dotsIndicator(number, index) {
  return DotsIndicator(
      dotsCount: number,
      position: index,
      decorator: DotsDecorator(
        size: const Size.square(8.0),
        activeSize: const Size.square(8.0),
        color: colorPrimary_light,
        activeColor: colorAccent,
      ));
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
              leftContainerShowBottomSheet(),
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
              leftContainerShowBottomSheet(),
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
              leftContainerShowBottomSheet(),
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

Widget leftContainerShowBottomSheet() {
  return Container(
      height: double.infinity,
      width: 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20)),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [colorAccent, colorAccent2])));
}

BoxDecoration boxDecoration() {
  return new BoxDecoration(
      color: colorPrimary,
      borderRadius: BorderRadius.circular(6),
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
            topRight: Radius.circular(10))),
  );
}

Widget leftContainerOfCard() {
  return Container(
    height: double.infinity,
    width: 10,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6),
            bottomLeft: Radius.circular(6)),
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

AppBar buttonAppBar(TabController _controller, int _selectedIndex) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    flexibleSpace: new Column(
      children: [
        TabBar(
          controller: _controller,
          onTap: (index) {
            _selectedIndex = _controller.index;
          },
          isScrollable: true,
          labelPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
          ),
          tabs: [
            tab(_selectedIndex, 1, 'Quiz'),
            tab(_selectedIndex, 0, 'Ramadan'),
          ],
        ),
      ],
    ),
  );
}

Tab tab(_selectedIndex, index, tabName) {
  return Tab(
      child: Container(
    height: 24,
    width: tabName == 'Ramadan' ? 90 : 68,
    decoration: BoxDecoration(
      border: Border.all(
          width: 0.5,
          color:
              _selectedIndex == index ? colorPrimary_light : Colors.redAccent),
      color: Colors.white,
      borderRadius: BorderRadius.circular(18.0)),
    child: Align(
      alignment: Alignment.center,
      child: Text(
        tabName,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 13,
            color: _selectedIndex == index
                ? colorPrimary_light
                : Colors.redAccent),
      ),
    ),
  ));
}

Widget containerSalat(context, icon, salatName, salatTime) {
  return Row(
    children: <Widget>[
      Image.asset(icon, height: 22, width: 22, color: colorAccent),
      SizedBox(
        width: 20,
      ),
      Container(
          width: MediaQuery.of(context).size.width / 3,
          child: Text(
            salatName,
            style: TextStyle(color: colorPrimary_light, fontSize: 16),
          )),
      Container(
          width: MediaQuery.of(context).size.width / 3,
          child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  salatTime,
                  style: TextStyle(color: colorPrimary_light, fontSize: 16),
                ),
              ))),
    ],
  );
}

class FlexyInternetCredit extends StatefulWidget {
  var value;
  final ValueChanged<bool> onChange;
  FlexyInternetCredit(this.value, this.onChange);
  @override
  _FlexyInternetCreditState createState() => _FlexyInternetCreditState();
}

class _FlexyInternetCreditState extends State<FlexyInternetCredit> {
  bool clickable = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * (0.075),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.value == 'internet'
                            ? 'Quota à transférer ?'
                            : 'Montant à transférer ?',
                        style:
                            TextStyle(color: colorPrimary_light, fontSize: 18),
                      ),
                    ),
                  ),
                  QuantityInternetBtn(widget.value),
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 30,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'A qui?',
                        style:
                            TextStyle(color: colorPrimary_light, fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  clickable
                      ? Container(
                          height: 73,
                          width: MediaQuery.of(context).size.width - 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorPrimary,
                              border: Border.all(
                                  width: 0.5, color: Colors.redAccent)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(height: 1.6),
                                  cursorColor: Colors.green[800],
                                  textAlign: TextAlign.center,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Numéro'),
                                ),
                              ),
                            ),
                          ))
                      : Container(
                          height: 96,
                          width: MediaQuery.of(context).size.width - 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorPrimary,
                              border: Border.all(
                                  width: 0.5, color: Colors.redAccent)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                          height: 62,
                                          width: 62,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                              border: Border.all(
                                                width: 0.5,
                                                color: Colors.grey[300],
                                              )),
                                          child: Icon(
                                            Icons.person_add,
                                            size: 30,
                                            color: colorAccent2,
                                          )),
                                      Text(
                                        'Mes Contacts',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            clickable = true;
                                            widget.onChange(clickable);
                                          });
                                        },
                                        child: Container(
                                            height: 62,
                                            width: 62,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(60),
                                                border: Border.all(
                                                  width: 0.5,
                                                  color: Colors.grey[300],
                                                )),
                                            child: Icon(
                                              Icons.phone,
                                              size: 30,
                                              color: Colors.purple[100],
                                            )),
                                      ),
                                      Text(
                                        'Composer numéro',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class QuantityInternetBtn extends StatefulWidget {
  var flexy;
  QuantityInternetBtn(var this.flexy);
  @override
  _QuantityInternetBtnState createState() => _QuantityInternetBtnState();
}

class _QuantityInternetBtnState extends State<QuantityInternetBtn> {
  int mo = 500;
  int da = 50;

  void _countInternetMore() {
    setState(() {
      if (mo == 500)
        mo = 1;
      else if (mo < 2) mo++;
    });
  }

  void _countInternetLess() {
    setState(() {
      if (mo == 2)
        mo--;
      else if (mo == 1) mo = 500;
    });
  }

  void _countCreditMore() {
    setState(() {
      if (da < 100) da += 10;
    });
  }

  void _countCreditLess() {
    setState(() {
      if (da > 50) da -= 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 24,
      child: Row(
        children: <Widget>[
          Text(
            widget.flexy == 'internet' ? mo.toString() : da.toString(),
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          Text(
            widget.flexy == 'internet' ? (mo == 500 ? 'Mo' : 'Go') : 'da',
            style: TextStyle(color: colorPrimary_light, fontSize: 18),
          ),
          widget.flexy == 'internet'
              ? SizedBox(width: mo == 500 ? 94 : 142)
              : SizedBox(width: da == 100 ? 100 : 123),
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: InkWell(
              onTap: () {
                widget.flexy == 'internet'
                    ? _countInternetLess()
                    : _countCreditLess();
              },
              child: Container(
                  height: 36,
                  width: 68,
                  decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.grey[300],
                      )),
                  child: Icon(
                    Icons.remove,
                    size: 34,
                    color: colorPrimary_dark,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {
                widget.flexy == 'internet'
                    ? _countInternetMore()
                    : _countCreditMore();
              },
              child: Container(
                  height: 36,
                  width: 68,
                  decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.grey[300],
                      )),
                  child: Icon(
                    Icons.add,
                    size: 34,
                    color: colorPrimary_dark,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

Widget ConfirmflexyInternetCredit(context, value) {
  final number = "0796123112"
      .replaceAllMapped(RegExp(r".{2}"), (match) => "${match.group(0)} ");
  return Scaffold(
    backgroundColor: Colors.transparent,
    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * (0.075),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          value == 'internet'
                              ? 'Quota à transférer ?'
                              : 'Montant à transférer ?',
                          style: TextStyle(
                              color: colorPrimary_light, fontSize: 18),
                        ),
                      ),
                    ),
                    QuantityInternetBtn(value),
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 30,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'A qui?',
                          style: TextStyle(
                              color: colorPrimary_light, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 8),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: colorPrimary,
                            border: Border.all(
                                width: 0.5, color: Colors.redAccent)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 10),
                          child: Row(
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      height: 62,
                                      width: 62,
                                      decoration: BoxDecoration(
                                          color: colorPrimary,
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.grey[300],
                                          )),
                                      child: Icon(
                                        Icons.person,
                                        size: 30,
                                        color: colorAccent2,
                                      )),
                                  Text(
                                    number,
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 14.0, 4, 6),
              child: Row(children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                        // color: Colors.grey,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Text(
                          'Frais de transfert :',
                          style: TextStyle(
                              color: colorPrimary_light, fontSize: 18),
                        )),
                    Container(
                        // color: Colors.green,
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(value == 'credit' ? '10' : '30',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 40)),
                        )),
                    Text('DA',
                        style:
                            TextStyle(color: colorPrimary_light, fontSize: 18))
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      back(context);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: colorPrimary,
                            borderRadius: BorderRadius.circular(26),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0.5,
                                  blurRadius: 3,
                                  offset:
                                      Offset(0, 3) // changes position of shadow
                                  )
                            ]),
                        height: 48,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: colorPrimary_dark,
                          size: 34,
                        )),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red[700],
                        borderRadius: BorderRadius.circular(26),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 0.5,
                              blurRadius: 4,
                              offset: Offset(0, 4) // changes position of shadow
                              )
                        ]),
                    height: 48,
                    width: MediaQuery.of(context).size.width - 132,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'CONFIRMER',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

class FloatingBtnContainer extends StatefulWidget {
  @override
  _FloatingBtnContainerState createState() => _FloatingBtnContainerState();
}

class _FloatingBtnContainerState extends State<FloatingBtnContainer>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;
  // static bool clickable = false;

  ValueChanged<bool> onChange;
  bool isClickedOn = false;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
    onChange = (value) {
      setState(() {
        isClickedOn = value;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
        height: 46.0,
        width: 46.0,
        child: FittedBox(
            child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                // isDismissible: true,
                isScrollControlled: true,
                builder: (context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return SingleChildScrollView(
                      child: Container(
                          width: w,
                          height: !isClickedOn ? 307 : 282,
                          decoration: BoxDecoration(
                            color: colorPrimary,
                            // color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18.0),
                              topRight: const Radius.circular(18.0),
                            ),
                          ),
                          child: DefaultTabController(
                            length: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 12),
                              child: Scaffold(
                                resizeToAvoidBottomInset: true,
                                appBar: PreferredSize(
                                  preferredSize:
                                      Size.fromHeight(kToolbarHeight),
                                  child: new Container(
                                    // color: Colors.green,
                                    height: 48.0,
                                    child: new TabBar(
                                      controller: _controller,
                                      onTap: (index) {
                                        setState(() {
                                          _selectedIndex = _controller.index;
                                        });
                                      },
                                      isScrollable: true,
                                      labelPadding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      indicatorColor: colorAccent,
                                      indicatorSize: TabBarIndicatorSize.label,
                                      tabs: [
                                        Tab(
                                            child: Container(
                                                width: 88,
                                                height: double.infinity,
                                                child: Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 2),
                                                        child: Text('INTERNET',
                                                            style: TextStyle(
                                                                color: _selectedIndex ==
                                                                        0
                                                                    ? colorAccent
                                                                    : colorPrimary_light,
                                                                fontSize:
                                                                    14)))))),
                                        Tab(
                                            child: Container(
                                                width: 88,
                                                height: double.infinity,
                                                child: Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 2.0),
                                                        child: Text(
                                                          'CREDIT',
                                                          style: TextStyle(
                                                              color: _selectedIndex ==
                                                                      1
                                                                  ? colorAccent
                                                                  : colorPrimary_light,
                                                              fontSize: 14),
                                                        ))))),
                                      ],
                                    ),
                                  ),
                                ),
                                body: TabBarView(
                                    physics: NeverScrollableScrollPhysics(),
                                    controller: _controller,
                                    children: [
                                      FlexyInternetCredit('internet', onChange),
                                      FlexyInternetCredit('credit', onChange)
                                    ]),
                              ),
                            ),
                          )),
                    );
                  });
                }).whenComplete(() async {
              await Future.delayed(Duration(milliseconds: 500));
              _controller.index = 0;
            });
          },
          child: Icon(Icons.add, size: 32),
          backgroundColor: Colors.redAccent,
        )));
  }
}
