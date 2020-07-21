import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';

import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:dots_indicator/dots_indicator.dart';

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
  int _selectedIndex;
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 150,
                child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    backgroundColor: Colors.white,
                    appBar: PreferredSize(
                      preferredSize: Size.fromHeight(48),
                      child: AppBar(
                        elevation: 0,
                        automaticallyImplyLeading: false,
                        backgroundColor: Colors.white,
                        flexibleSpace: new Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TabBar(
                              controller: _controller,
                              onTap: (index) {
                                _selectedIndex = _controller.index;
                              },
                              isScrollable: true,
                              unselectedLabelColor: Colors.red,
                              // indicatorColor: Colors.green,
                              // indicatorSize: TabBarIndicatorSize.label,
                              // labelColor: Colors.deepPurpleAccent,
                              labelPadding: EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 0),
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // color: Colors.purple,
                                // border: Colors.red,
                              ),
                              tabs: [
                                Tab(
                                    child: Container(
                                  height: 24,
                                  width: 68,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: _selectedIndex == 1
                                            ? colorPrimary_light
                                            : colorAccent),
                                    color: colorPrimary,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18.0),
                                      topRight: const Radius.circular(18.0),
                                      bottomLeft: Radius.circular(18.0),
                                      bottomRight: const Radius.circular(18.0),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Quiz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: _selectedIndex == 1
                                              ? colorPrimary_light
                                              : colorAccent),
                                    ),
                                  ),
                                )),
                                Tab(
                                    child: Container(
                                  height: 24,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: _selectedIndex == 0
                                            ? colorPrimary_light
                                            : colorAccent),
                                    color: colorPrimary,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18.0),
                                      topRight: const Radius.circular(18.0),
                                      bottomLeft: Radius.circular(18.0),
                                      bottomRight: const Radius.circular(18.0),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Ramadan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: _selectedIndex == 0
                                              ? colorPrimary_light
                                              : colorAccent),
                                    ),
                                  ),
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    body: TabBarView(controller: _controller, children: [
                      Quiz(),
                      Icon(Icons.movie),
                    ]),
                  ),
                ),
              ),
            ],
          ),
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
            child: Image.asset(ic_offercall,
                height: 22, width: 22, color: colorPrimary_light),
          ),
          DotsIndicator(
              dotsCount: 1,
              // position: currentIndexPage,
              decorator: DotsDecorator(
                size: const Size.square(8.0),
                activeSize: const Size.square(8.0),
                color: colorPrimary_light,
                activeColor: colorAccent,
              ))
        ],
      ),
    );
  }
}
