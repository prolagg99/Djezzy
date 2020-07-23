import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:flutter/material.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';

class DjezzyFlexy extends StatefulWidget {
  static const tag = '/DjezzyFlexy';
  @override
  _DjezzyFlexyState createState() => _DjezzyFlexyState();
}

class _DjezzyFlexyState extends State<DjezzyFlexy>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 1, vsync: this);
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
        length: 1,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              flexibleSpace: new Column(
                children: [
                  TabBar(
                    controller: _controller,
                    onTap: (index) {
                      _selectedIndex = _controller.index;
                    },
                    isScrollable: true,
                    labelPadding:
                        EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    tabs: [
                      tab(_selectedIndex, 1, 'Flexy'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(controller: _controller, children: [
            Flexy(),
          ]),
        ),
      ),
    );
  }
}

class Flexy extends StatefulWidget {
  @override
  _FlexyState createState() => _FlexyState();
}

class _FlexyState extends State<Flexy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: InkWell(
              onTap: () {
                showBottomSheetFlexy(context);
              },
              child: Container(
                // color: Colors.grey[400],
                width: MediaQuery.of(context).size.width - 20,
                height: 75,
                decoration: boxDecoration(),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.cancel,
                            color: Colors.red[100],
                            size: 64,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('0793617171'),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                      // color: Colors.redAccent,
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                            color: colorAccentGreen,
                                          )))),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                      // color: Colors.redAccent,
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '50 DA',
                                            style: TextStyle(
                                              color: colorAccentGreen,
                                            ),
                                          ))))
                            ],
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  'Mer. 01 Juil., 22:33',
                                  style: TextStyle(
                                      color: colorPrimary_light, fontSize: 12),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
