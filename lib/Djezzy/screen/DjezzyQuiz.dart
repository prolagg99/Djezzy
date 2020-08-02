import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:djezzy/Djezzy/utils/codePicker/wilaya_name.dart';

import 'package:flutter/material.dart';

class DjezzyQuiz extends StatefulWidget {
  static const tag = '/DjezzyQuiz';
  @override
  _DjezzyQuizState createState() => _DjezzyQuizState();
}

class _DjezzyQuizState extends State<DjezzyQuiz>
    with SingleTickerProviderStateMixin {
  int selectedPos = 1;
  TabController _controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    selectedPos = 1;
    _controller = TabController(length: 2, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(Colors.black);
    return Scaffold(
      appBar: appBar(),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: buttonAppBar(_controller, _selectedIndex),
          ),
          body: TabBarView(controller: _controller, children: [
            Quiz(),
            Ramadan(),
          ]),
        ),
      ),
    );
  }
}

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              // launchScreen(context, DzMeEvent.tag);
            },
            child: Container(
              height: 202,
              width: 322,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey[400].withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 8,
                    offset: Offset(0, 3) // changes position of shadow
                    )
              ]),
              child: Image(
                image: AssetImage(img_quiz1),
              ),
            ),
          ),
          dotsIndicator(1, 0),
        ],
      ),
    );
  }
}

class Ramadan extends StatefulWidget {
  @override
  _RamadanState createState() => _RamadanState();
}

class _RamadanState extends State<Ramadan> {
  int _radioValue = 0;
  String wilaya;

  changeText(int index) {
    setState(() => wilaya = codes[index]);
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
      child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  // launchScreen(context, DzMeEvent.tag);
                },
                child: Container(
                  height: 202,
                  width: 322,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey[600].withOpacity(0.3),
                        spreadRadius: 0.5,
                        blurRadius: 8,
                        offset: Offset(0, 8) // changes position of shadow
                        )
                  ]),
                  child: Image(image: AssetImage(img_event1)),
                ),
              ),
              dotsIndicator(1, 0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 276,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey[800].withOpacity(0.3),
                        spreadRadius: 0.5,
                        blurRadius: 8,
                        offset: Offset(0, 4) // changes position of shadow
                        )
                  ]),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 56,
                        decoration: BoxDecoration(boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey[800].withOpacity(0.3),
                              spreadRadius: 0,
                              blurRadius: 0.5,
                              offset: Offset(0, 0.5)),
                        ], color: colorPrimary),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: ScrollConfiguration(
                                  behavior: MyBehavior(),
                                  child: InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) {
                                        return StatefulBuilder(
                                          builder: (BuildContext context,
                                              StateSetter setState) {
                                            return Container(
                                                width: w,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height -
                                                    24,
                                                decoration: BoxDecoration(
                                                  color: colorPrimary,
                                                  borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(18.0),
                                                    topRight: Radius.circular(18.0),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: <Widget>[
                                                    leftContainerShowBottomSheet(),
                                                    Container(
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .width -
                                                          15,
                                                      child: ScrollConfiguration(
                                                            behavior: MyBehavior(),
                                                            child: ListView.builder(
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount: codes.length,
                                                            itemBuilder:
                                                                (BuildContext context,
                                                                    int index) {
                                                              return Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            12,
                                                                        vertical: 4),
                                                                child: InkWell(
                                                                  onTap: () async {
                                                                    setState(() {
                                                                      _radioValue =
                                                                          index;
                                                                    });
                                                                    changeText(index);
                                                                    await Future.delayed(
                                                                        Duration(
                                                                            milliseconds:
                                                                                150));
                                                                    back(context);
                                                                  },
                                                                  child: Row(
                                                                    children: <
                                                                        Widget>[
                                                                      Container(
                                                                        width: MediaQuery.of(
                                                                                    context)
                                                                                .size
                                                                                .width /
                                                                            3,
                                                                        child: Text(
                                                                          codes[
                                                                              index],
                                                                          style: TextStyle(
                                                                              color: Colors
                                                                                  .black),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height: 26,
                                                                        width: MediaQuery.of(
                                                                                    context)
                                                                                .size
                                                                                .width /
                                                                            1.8,
                                                                        child: Align(
                                                                          alignment:
                                                                              Alignment
                                                                                  .centerRight,
                                                                          child: new Radio(
                                                                              activeColor: colorAccent,
                                                                              value: index,
                                                                              groupValue: _radioValue,
                                                                              onChanged: (value) async {
                                                                                setState(
                                                                                    () {
                                                                                  _radioValue =
                                                                                      value;
                                                                                });
                                                                                changeText(
                                                                                    index);
                                                                                await Future.delayed(
                                                                                    Duration(milliseconds: 150));
                                                                                back(
                                                                                    context);
                                                                              }),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                      ),
                                                    ),
                                                  ],
                                                ));
                                          },
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(38)),
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [colorAccent2, colorAccent])),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(height: 14),
                                        Text(wilaya == null ? codes[0] : wilaya,
                                            style: TextStyle(color: Colors.white)),
                                        Icon(Icons.keyboard_arrow_down,
                                            color: Colors.white),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      '22 Du Al Qadah 1441',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 26.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: containerSalat(
                                    context, ic_fajr, 'Fajr', '04:24'),
                              ),
                              Expanded(
                                flex: 1,
                                child: containerSalat(
                                    context, ic_dhohr, 'Dhohr', '13:12'),
                              ),
                              Expanded(
                                flex: 1,
                                child: containerSalat(
                                    context, ic_asr, 'Asr', '17:00'),
                              ),
                              Expanded(
                                flex: 1,
                                child: containerSalat(
                                    context, ic_magreb, 'Magreb', '20:21'),
                              ),
                              Expanded(
                                flex: 1,
                                child: containerSalat(
                                    context, ic_icha, 'Icha', '21:53'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
