import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';
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
  static List<DjezzyFlexyCard> mListings;

  TabController _controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    mListings = getFlexy();

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
                          tabs: [tab(_selectedIndex, 1, 'Flexy')],
                        ),
                      ],
                    ))),
            body: TabBarView(controller: _controller, children: [
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mListings.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Flexy(mListings[index], index);
                  }),
            ]),
            floatingActionButton: Padding(
                padding: const EdgeInsets.all(0.0),
                child: FloatingBtnContainer()),
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
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
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
                            child:
                                ConfirmflexyInternetCredit(context, model.type),
                          );
                        },
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

              //  ListView.builder(
              //     scrollDirection: Axis.vertical,
              //     itemCount: mListings.length,
              //     shrinkWrap: true,
              //     itemBuilder: (context, index) {
              //       return FlexyCard(mListings[index], index);
              //     }),
            ))
      ],
    ));
  }
}

// class Flexy extends StatefulWidget {
//   DjezzyFlexyCard model;
//   int selectedIndex;
//   Flexy(DjezzyFlexyCard model, int selectedIndex) {
//     this.model = model;
//     this.selectedIndex = selectedIndex;
//   }
//   @override
//   _FlexyState createState() => _FlexyState();
// }

// class _FlexyState extends State<Flexy> {
//   @override
//   Widget build(BuildContext context) {
//     var w = MediaQuery.of(context).size.width;
//     return Container(
//         child: Column(
//       children: <Widget>[
//         Padding(
//             padding: const EdgeInsets.symmetric(vertical: 4),
//             child: InkWell(
//               onTap: () {
//                 showModalBottomSheet(
//                     backgroundColor: Colors.transparent,
//                     context: context,
//                     isScrollControlled: true,
//                     builder: (context) {
//                       return StatefulBuilder(
//                         builder: (BuildContext context, StateSetter setState) {
//                           return Container(
//                             width: w,
//                             height: 414,
//                             decoration: BoxDecoration(
//                               color: colorPrimary,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(18.0),
//                                 topRight: const Radius.circular(18.0),
//                               ),
//                             ),
//                             child:
//                                 ConfirmflexyInternetCredit(context, 'credit'),
//                           );
//                         },
//                       );
//                     });
//               },
//               child: Container(
//                   width: MediaQuery.of(context).size.width - 20,
//                   height: 75,
//                   decoration: boxDecoration(),
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                           flex: 2,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Icon(Icons.cancel,
//                                   color: Colors.red[100], size: 64)
//                             ],
//                           )),
//                       Expanded(
//                           flex: 7,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Text(model.number),
//                                   Container(
//                                       width: model.type == 'credit'
//                                           ? MediaQuery.of(context).size.width -
//                                               222
//                                           : MediaQuery.of(context).size.width -
//                                               232,
//                                       child: Align(
//                                           alignment: Alignment.centerRight,
//                                           child: Icon(Icons.arrow_drop_down,
//                                               color: colorAccentGreen))),
//                                   Container(
//                                       child: Align(
//                                           alignment: Alignment.centerLeft,
//                                           child: Text(
//                                             model.quantity,
//                                             style: TextStyle(
//                                                 color: colorAccentGreen),
//                                           )))
//                                 ],
//                               ),
//                               Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 8),
//                                       child: Text(model.date + ' ' + model.time,
//                                           style: TextStyle(
//                                               color: colorPrimary_light,
//                                               fontSize: 12))))
//                             ],
//                           ))
//                     ],
//                   )),

//               //  ListView.builder(
//               //     scrollDirection: Axis.vertical,
//               //     itemCount: mListings.length,
//               //     shrinkWrap: true,
//               //     itemBuilder: (context, index) {
//               //       return FlexyCard(mListings[index], index);
//               //     }),
//             ))
//       ],
//     ));
//   }
// }

// class FlexyCard extends StatelessWidget {
//   DjezzyFlexyCard model;
//   int selectedIndex;
//   FlexyCard(DjezzyFlexyCard model, int selectedIndex) {
//     this.model = model;
//     this.selectedIndex = selectedIndex;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
//       child: Container(
//           width: MediaQuery.of(context).size.width - 20,
//           height: 75,
//           decoration: boxDecoration(),
//           child: Row(
//             children: <Widget>[
//               Expanded(
//                   flex: 2,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Icon(Icons.cancel, color: Colors.red[100], size: 64)
//                     ],
//                   )),
//               Expanded(
//                   flex: 7,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Row(
//                         children: <Widget>[
//                           Text(model.number),
//                           Container(
//                               width: model.type == 'credit'
//                                   ? MediaQuery.of(context).size.width - 222
//                                   : MediaQuery.of(context).size.width - 232,
//                               child: Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Icon(Icons.arrow_drop_down,
//                                       color: colorAccentGreen))),
//                           Container(
//                               child: Align(
//                                   alignment: Alignment.centerLeft,
//                                   child: Text(
//                                     model.quantity,
//                                     style: TextStyle(color: colorAccentGreen),
//                                   )))
//                         ],
//                       ),
//                       Align(
//                           alignment: Alignment.centerRight,
//                           child: Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 8),
//                               child: Text(model.date + ' ' + model.time,
//                                   style: TextStyle(
//                                       color: colorPrimary_light,
//                                       fontSize: 12))))
//                     ],
//                   ))
//             ],
//           )),
//     );
//   }
// }

class FloatingBtnContainer extends StatefulWidget {
  @override
  _FloatingBtnContainerState createState() => _FloatingBtnContainerState();
}

class _FloatingBtnContainerState extends State<FloatingBtnContainer>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;
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
                isScrollControlled: true,
                builder: (context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return Container(
                        width: w,
                        height: w * 0.852,
                        decoration: BoxDecoration(
                          color: colorPrimary,
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
                              appBar: PreferredSize(
                                preferredSize: Size.fromHeight(kToolbarHeight),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 0),
                                  child: new Container(
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
                              ),
                              body: TabBarView(
                                  physics: NeverScrollableScrollPhysics(),
                                  controller: _controller,
                                  children: [
                                    FlexyInternetCredit('internet'),
                                    FlexyInternetCredit('credit')
                                  ]),
                            ),
                          ),
                        ));
                  });
                });
          },
          child: Icon(Icons.add, size: 32),
          backgroundColor: Colors.redAccent,
        )));
  }
}
