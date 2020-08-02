import 'package:flutter/material.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';
import 'package:djezzy/Djezzy/model/DjezzyModels.dart';

class DjezzyFlexy extends StatefulWidget {
  static const tag = '/DjezzyFlexy';
  @override
  _DjezzyFlexyState createState() => _DjezzyFlexyState();
}

class _DjezzyFlexyState extends State<DjezzyFlexy>
    with TickerProviderStateMixin {
  static List<DjezzyFlexyCard> mListings;

  bool showFab = true;
  bool isClickedOn = false;
  TabController _controller, _tabController;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    mListings = getFlexy();

    _controller = TabController(length: 1, vsync: this);
    _tabController = TabController(length: 2, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
      // print("Selected Index: " + _tabController.index.toString());
    });
  }

  void showFloatingActionButton(bool value) {
    setState(() {
      showFab = value;
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
                          // onTap: (index) {
                          //   _selectedIndex = _controller.index;
                          // },
                          isScrollable: true,
                          labelPadding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          tabs: [tab(0, 1, 'Flexy')],
                        ),
                      ],
                    ))),
            body: TabBarView(controller: _controller, children: [
              ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: mListings.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Flexy(mListings[index], index);
                }),
              ),
            ]),
            floatingActionButton: showFab
                ? Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                        height: 46.0,
                        width: 46.0,
                        child: FittedBox(
                            child: FloatingActionButton(
                          onPressed: () {
                            showFloatingActionButton(false);
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                // isDismissible: true,
                                isScrollControlled: true,
                                builder: (context) {
                                  return ScrollConfiguration(
                                  behavior: MyBehavior(),
                                  child: SingleChildScrollView(
                                  child: Padding(
                                    padding:
                                        MediaQuery.of(context).viewInsets,
                                    child: StatefulBuilder(builder:
                                        (BuildContext context,
                                            StateSetter setState) {
                                      return Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width,
                                          /* 307 282*/
                                          height: !isClickedOn ? 307 : 282,
                                          decoration: BoxDecoration(
                                            color: colorPrimary,
                                                // color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(18.0),
                                                  topRight:
                                                      const Radius.circular(18.0),
                                                ),
                                              ),
                                              child: DefaultTabController(
                                                  length: 2,
                                                  child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 10,
                                                          horizontal: 12),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            TabBar(
                                                              controller:
                                                                  _tabController,
                                                              onTap: (index) {
                                                                setState(() {
                                                                  _selectedIndex =
                                                                      _tabController
                                                                          .index;
                                                                });
                                                              },
                                                              isScrollable: true,
                                                              labelPadding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          0,
                                                                      vertical:
                                                                          0),
                                                              indicatorColor:
                                                                  colorAccent,
                                                              indicatorSize:
                                                                  TabBarIndicatorSize
                                                                      .label,
                                                              tabs: [
                                                                Tab(
                                                                    child: Container(
                                                                        width: 88,
                                                                        height: double
                                                                            .infinity,
                                                                        child: Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Padding(
                                                                                padding: const EdgeInsets.only(top: 2),
                                                                                child: Text('INTERNET', style: TextStyle(color: _selectedIndex == 0 ? colorAccent : colorPrimary_light, fontSize: 14)))))),
                                                                Tab(
                                                                    child: Container(
                                                                        width: 88,
                                                                        height: double.infinity,
                                                                        child: Align(
                                                                            alignment: Alignment.center,
                                                                            child: Padding(
                                                                                padding: const EdgeInsets.only(top: 2.0),
                                                                                child: Text(
                                                                                  'CREDIT',
                                                                                  style: TextStyle(color: _selectedIndex == 1 ? colorAccent : colorPrimary_light, fontSize: 14),
                                                                                ))))),
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: TabBarView(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  controller:
                                                                      _tabController,
                                                                  children: [
                                                                    Container(
                                                                      height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height,
                                                                      child:
                                                                          Column(
                                                                        children: <
                                                                            Widget>[
                                                                          Row(
                                                                            children: <
                                                                                Widget>[
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: <Widget>[
                                                                                  Container(
                                                                                    height: MediaQuery.of(context).size.height * (0.075),
                                                                                    child: Align(
                                                                                      alignment: Alignment.centerLeft,
                                                                                      child: Text(
                                                                                        'Quota à transférer ?',
                                                                                        style: TextStyle(color: colorPrimary_light, fontSize: 18),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  QuantityInternetBtn('internet'),
                                                                                ],
                                                                              )
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                              height:
                                                                                  10),
                                                                          Row(
                                                                            children: <
                                                                                Widget>[
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: <Widget>[
                                                                                  Container(
                                                                                    height: 30,
                                                                                    child: Align(
                                                                                      alignment: Alignment.centerLeft,
                                                                                      child: Text(
                                                                                        'A qui?',
                                                                                        style: TextStyle(color: colorPrimary_light, fontSize: 18),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  SizedBox(height: 6),
                                                                                  isClickedOn
                                                                                      ? Container(
                                                                                          height: 73,
                                                                                          width: MediaQuery.of(context).size.width - 24,
                                                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: colorPrimary, border: Border.all(width: 0.5, color: Colors.redAccent)),
                                                                                          child: Align(
                                                                                            alignment: Alignment.center,
                                                                                            child: TextField(
                                                                                              maxLength: 30,
                                                                                              enableInteractiveSelection: false,
                                                                                              keyboardType: TextInputType.number,
                                                                                              style: TextStyle(height: 1.6),
                                                                                              cursorColor: Colors.green[800],
                                                                                              textAlign: TextAlign.center,
                                                                                              autofocus: true,
                                                                                              decoration: InputDecoration(
                                                                                                border: InputBorder.none,
                                                                                                hintText: 'Numéro',
                                                                                                counterText: "",
                                                                                              ),
                                                                                            ),
                                                                                          ))
                                                                                      : Container(
                                                                                          height: 96,
                                                                                          width: MediaQuery.of(context).size.width - 24,
                                                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: colorPrimary, border: Border.all(width: 0.5, color: Colors.redAccent)),
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
                                                                                                              borderRadius: BorderRadius.circular(60),
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
                                                                                                            isClickedOn = true;
                                                                                                            // widget.onChange(clickable);
                                                                                                          });
                                                                                                        },
                                                                                                        child: Container(
                                                                                                            height: 62,
                                                                                                            width: 62,
                                                                                                            decoration: BoxDecoration(
                                                                                                                color: Colors.white,
                                                                                                                borderRadius: BorderRadius.circular(60),
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
                                                                    ),
                                                                    Container(
                                                                      height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height,
                                                                      child:
                                                                          Column(
                                                                        children: <
                                                                            Widget>[
                                                                          Row(
                                                                            children: <
                                                                                Widget>[
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: <Widget>[
                                                                                  Container(
                                                                                    height: MediaQuery.of(context).size.height * (0.075),
                                                                                    child: Align(
                                                                                      alignment: Alignment.centerLeft,
                                                                                      child: Text(
                                                                                        'Montant à transférer ?',
                                                                                        style: TextStyle(color: colorPrimary_light, fontSize: 18),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  QuantityInternetBtn('credit'),
                                                                                ],
                                                                              )
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                              height:
                                                                                  10),
                                                                          Row(
                                                                            children: <
                                                                                Widget>[
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: <Widget>[
                                                                                  Container(
                                                                                    height: 30,
                                                                                    child: Align(
                                                                                      alignment: Alignment.centerLeft,
                                                                                      child: Text(
                                                                                        'A qui?',
                                                                                        style: TextStyle(color: colorPrimary_light, fontSize: 18),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  SizedBox(height: 6),
                                                                                  isClickedOn
                                                                                      ? Container(
                                                                                          height: 73,
                                                                                          width: MediaQuery.of(context).size.width - 24,
                                                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: colorPrimary, border: Border.all(width: 0.5, color: Colors.redAccent)),
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
                                                                                                  decoration: InputDecoration(border: InputBorder.none, hintText: 'Numéro'),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ))
                                                                                      : Container(
                                                                                          height: 96,
                                                                                          width: MediaQuery.of(context).size.width - 24,
                                                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: colorPrimary, border: Border.all(width: 0.5, color: Colors.redAccent)),
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
                                                                                                              borderRadius: BorderRadius.circular(60),
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
                                                                                                            isClickedOn = true;
                                                                                                            // widget.onChange(clickable);
                                                                                                          });
                                                                                                        },
                                                                                                        child: Container(
                                                                                                            height: 62,
                                                                                                            width: 62,
                                                                                                            decoration: BoxDecoration(
                                                                                                                color: Colors.white,
                                                                                                                borderRadius: BorderRadius.circular(60),
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
                                                                    ),
                                                                  ]),
                                                            ),
                                                          ]))));
                                        }),
                                      ),
                                    ),
                                  );
                                }).whenComplete(() async {
                              showFloatingActionButton(true);
                              await Future.delayed(Duration(milliseconds: 500));
                              _tabController.index = 0;
                              isClickedOn = false;
                            });
                          },
                          child: Icon(Icons.add, size: 32),
                          backgroundColor: Colors.redAccent,
                        ))))
                : Container(),
          ),
        ));
  }
}

class Flexy extends StatelessWidget {
  DjezzyFlexyCard model;
  int selectedIndex;
  Flexy(DjezzyFlexyCard model, int selectedIndex) {
    this.model = model;
    this.selectedIndex = selectedIndex;
  }
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
        child: Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ScrollConfiguration(
              behavior: MyBehavior(),
                child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return Container(
                          width: w,
                          height: 414,
                          decoration: BoxDecoration(
                            color: colorPrimary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18.0),
                              topRight: const Radius.circular(18.0),
                            ),
                          ),
                          child: ConfirmflexyInternetCredit(context, model.type),
                        );
                      });
                },
                child: Container(
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
                                Icon(Icons.cancel,
                                    color: Colors.red[100], size: 64)
                              ],
                            )),
                        Expanded(
                            flex: 7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(model.number),
                                    Container(
                                        width: model.type == 'credit'
                                            ? MediaQuery.of(context).size.width -
                                                222
                                            : MediaQuery.of(context).size.width -
                                                232,
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(Icons.arrow_drop_down,
                                                color: colorAccentGreen))),
                                    Container(
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              model.quantity,
                                              style: TextStyle(
                                                  color: colorAccentGreen),
                                            )))
                                  ],
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(model.date + ' ' + model.time,
                                            style: TextStyle(
                                                color: colorPrimary_light,
                                                fontSize: 12))))
                              ],
                            ))
                      ],
                    )),
              ),
            ))
      ],
    ));
  }
}
