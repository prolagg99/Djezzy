import 'package:djezzy/Djezzy/screen/DjezzyEmergency.dart';
import 'package:djezzy/Djezzy/screen/DjezzyFlexy.dart';
import 'package:djezzy/Djezzy/screen/DjezzyPrimary.dart';
import 'package:djezzy/Djezzy/screen/DjezzyMiddle.dart';
import 'package:djezzy/Djezzy/screen/DjezzySecondary.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:flutter/material.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';

class DjezzyProfile extends StatefulWidget {
  static const tag = '/DjezzyProfile';
  @override
  _DjezzyProfileState createState() => _DjezzyProfileState();
}

class _DjezzyProfileState extends State<DjezzyProfile> {
  int indexOne = 0;
  int indexTwo = 0;
  int indexTwoChildren = 0;
  int indexThree = 0;
  bool _isContainerVisible1 = false;
  bool _isContainerVisible2 = false;
  bool _isContainerVisible3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(),
        body: ScrollConfiguration(
              behavior: MyBehavior(),
              child: SingleChildScrollView(
              child: Column(
              children: <Widget>[
                ClipPath(
                  clipBehavior: Clip.hardEdge,
                  clipper: MyCustomClipper(),
                  child: Material(
                    child: Container(
                    width: double.infinity,
                    height: 206,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [colorAccent2, colorAccent]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(42, 54, 42, 0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(                              
                                height: 78,
                                width: 78,
                                decoration: BoxDecoration(
                                    color: Colors.white10,
                                    border:
                                        Border.all(color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // SizedBox(height: 4),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical:4),
                                      child: Text('PLAY',
                                          style: TextStyle(color: Colors.white)),
                                    ),
                                    // SizedBox(height: 4),
                                    Text('07 96 12 31 12',
                                        style: TextStyle(color: Colors.white)),
                                  ])
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Icon(
                                    Icons.wb_sunny,
                                    size: 18,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                onTap: (){
                  print(indexOne);
                  if(indexOne != 1){
                    setState(() { 
                      indexOne = 1;
                      print(indexOne);
                    });
                  }
                  print(indexOne);
                  if(!_isContainerVisible1){
                    Future.delayed(const Duration(milliseconds: 130), () { 
                    if (this.mounted) { 
                      setState(() { 
                      _isContainerVisible1=true; 
                        print(_isContainerVisible1);
                      });
                    }});
                  }else{
                    setState(() { 
                      _isContainerVisible1=false; 
                      print(_isContainerVisible1);
                    });
                    if(indexOne == 1){
                    Future.delayed(const Duration(milliseconds: 130), () {
                    if (this.mounted) { 
                      setState(() { 
                        indexOne = 0;
                        print(indexOne);
                      });}});
                    }
                  }},
                  child: Padding(
                  padding: const EdgeInsets.fromLTRB(18,0,18,16),
                  child: Container(
                    height: 38,
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.phone_iphone,size: 22, color: colorAccent,))),
                          Container(
                            // color: Colors.grey,
                            width: 288,
                            height: 38,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                  child: Text(
                                  'Mes services', 
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: colorPrimary_light
                                    )),
                                ),
                                SizedBox(height: 14),
                                Container(height: 0.5,color: Colors.black54,)
                              ],
                            ),),
                          Container(
                          height: 38,
                          // color: Colors.red,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Icon( indexOne != 1 ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,size: 14,),
                            ))),
                        ],),
                      ],
                    ),
                  ),
                ),
              ),
              // the first section --------------------------------------------------------------------------------
              indexOne == 1 ?
              GestureDetector(
                onTap: (){
                      launchScreen(context, DjezzyFlexy.tag);
                    },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(38,0,18,16),
                  child: Container(
                    height: 38,
                    color: Colors.transparent,
                    child: _isContainerVisible1 ? Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.phone_iphone,size: 22, color: colorAccent,))),
                          Container(
                            // color: Colors.grey,
                            width: 268,
                            height: 38,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                  child: Text(
                                  'Flexy/FlexyNet', 
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: colorPrimary_light
                                    )),
                                ),
                                SizedBox(height: 14),
                                Container(height: 0.5,color: Colors.black54,)
                              ],
                            ),),
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                child: Icon(Icons.keyboard_arrow_right,size: 14,),
                              ))),
                        ],),
                      ],
                    ) : Container(),
                  ),
                ),
              ): Container(),

              // ----------------------------------------------------------------------------------------
               GestureDetector(
                onTap: (){
                  print(indexTwo);
                  if(indexTwo != 2){
                    setState(() { 
                      indexTwo = 2;
                      print(indexTwo);
                    });
                  }
                  print(indexTwo);
                  if(!_isContainerVisible2){
                    Future.delayed(const Duration(milliseconds: 130), () { 
                    if (this.mounted) { 
                      setState(() { 
                      _isContainerVisible2=true; 
                        print(_isContainerVisible2);
                      });
                    }});
                  }else{
                    setState(() { 
                      _isContainerVisible2=false; 
                      print(_isContainerVisible2);
                    });
                    if(indexTwo == 2){
                    Future.delayed(const Duration(milliseconds: 200), () {
                    if (this.mounted) { 
                      setState(() { 
                        indexTwo = 0;
                        indexTwoChildren = 0;
                        print(indexTwo);
                      });}});
                    }
                  }}, // ******
                  child: Padding(
                  padding: const EdgeInsets.fromLTRB(18,0,18,16),
                  child: Container(
                    height: 38,
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.info,size: 22, color: colorAccent,))),
                          Container(
                            // color: Colors.grey,
                            width: 288,
                            height: 38,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                  child: Text(
                                  'Info utiles', 
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: colorPrimary_light
                                    )),
                                ),
                                SizedBox(height: 14),
                                Container(height: 0.5,color: Colors.black54,)
                              ],
                            ),),
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                child: Icon(indexTwo != 2 ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up ,size: 14,),
                              ))),
                        ],),
                      ],
                    ),
                  ),
                ),
              ),
              // the seconde section -------------------------------------------------------------
              indexTwo == 2 ?
              // _isContainerVisible2 ?
              Container(
                height: 108,
                width: MediaQuery.of(context).size.width,
              // color: Colors.blueGrey,
              child: _isContainerVisible2 ? Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      setState(() {
                          launchScreen(context, DjezzyEmergency.tag);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(38,0,18,16),
                      child:  Container(
                        height: 38,
                        color: Colors.transparent,
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Container(
                                height: 38,
                                // color: Colors.red,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Icon(Icons.phone_iphone,size: 22, color: colorAccent,))),
                              Container(
                                // color: Colors.grey,
                                width: 268,
                                height: 38,
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                      child: Text(
                                      'Numéros d\'urgence', 
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: colorPrimary_light
                                        )),
                                    ),
                                    SizedBox(height: 14),
                                    Container(height: 0.5,color: Colors.black54,)
                                  ],
                                ),),
                              Container(
                                height: 38,
                                // color: Colors.red,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4),
                                    child: Icon(Icons.keyboard_arrow_right,size: 14,),
                                  ))),
                            ],),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                  onTap: (){
                        setState(() {
                          if(indexTwoChildren != 4)
                            indexTwoChildren = 4;
                          else if(indexTwoChildren == 4) indexTwoChildren = 0;
                          print(indexTwoChildren);
                        });
                      },
                  child: Padding(
                  padding: const EdgeInsets.fromLTRB(38,0,18,16),
                  child: Container(
                    height: 38,
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.phone_iphone,size: 22, color: colorAccent,))),
                          Container(
                            // color: Colors.grey,
                            width: 268,
                            height: 38,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                  child: Text(
                                  'Education nationale', 
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: colorPrimary_light
                                    )),
                                ),
                                SizedBox(height: 14),
                                Container(height: 0.5,color: Colors.black54,)
                              ],
                            ),),
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                child: Icon(indexTwoChildren != 4 ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,size: 14,),
                              ))),
                        ],),
                      ],
                    ),
                  ),
                )),
              ]) : Container(),
              ) : Container(),
              // the seconde section child ----------------------------------------------------------------------------
              indexTwoChildren == 4 ?
              Column(
              children: <Widget>[
                GestureDetector(
                onTap: (){
                  launchScreen(context, DjezzyPrimary.tag);
                },
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(58,0,18,16),
                    child: Container(
                      height: 38,
                      color: Colors.transparent,
                      child: Column(
                        children: <Widget>[
                          Row(children: <Widget>[
                            Container(
                              height: 38,
                              // color: Colors.red,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Icon(Icons.phone_iphone,size: 22, color: colorAccent,))),
                            Container(
                              // color: Colors.grey,
                              width: 248,
                              height: 38,
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                    child: Text(
                                    'Enregistrement primaire', 
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: colorPrimary_light
                                      )),
                                  ),
                                  SizedBox(height: 14),
                                  Container(height: 0.5,color: Colors.black54,)
                                ],
                              ),),
                            Container(
                              height: 38,
                              // color: Colors.red,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Icon(Icons.keyboard_arrow_right,size: 14,),
                                ))),
                          ],),
                        ],
                      ),
                    ),
                  ),
                ),
              GestureDetector(
                onTap: (){
                  launchScreen(context, DjezzyMiddle.tag);
                },
                child: Padding(
                padding: const EdgeInsets.fromLTRB(58,0,18,16),
                child: Container(
                  height: 38,
                  color: Colors.transparent,
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        Container(
                          height: 38,
                          // color: Colors.red,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Icon(Icons.phone_iphone,size: 22, color: colorAccent,))),
                        Container(
                          // color: Colors.grey,
                          width: 248,
                          height: 38,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                child: Text(
                                'Enregistrement moyen', 
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colorPrimary_light
                                  )),
                              ),
                              SizedBox(height: 14),
                              Container(height: 0.5,color: Colors.black54,)
                            ],
                          ),),
                        Container(
                          height: 38,
                          // color: Colors.red,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Icon(Icons.keyboard_arrow_right,size: 14,),
                            ))),
                      ],),
                    ],
                  ),
                ),
                  ),
              ),
              GestureDetector(
                onTap: (){
                  launchScreen(context, DjezzySecondary.tag);
                },
                child: Padding(
                padding: const EdgeInsets.fromLTRB(58,0,18,16),
                child: Container(
                  height: 38,
                  color: Colors.transparent,
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        Container(
                          height: 38,
                          // color: Colors.red,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Icon(Icons.phone_iphone,size: 22, color: colorAccent,))),
                        Container(
                          // color: Colors.grey,
                          width: 248,
                          height: 38,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                child: Text(
                                'Enregistrement secondaire', 
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colorPrimary_light
                                  )),
                              ),
                              SizedBox(height: 14),
                              Container(height: 0.5,color: Colors.black54,)
                            ],
                          ),),
                        Container(
                          height: 38,
                          // color: Colors.red,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Icon(Icons.keyboard_arrow_right,size: 14,),
                            ))),
                      ],),
                    ],
                  ),
                ),
                  ),
              ), ],
                ) : Container(),
              // --------------------------------------------------------------------------------------------------
              GestureDetector(
                onTap: (){
                  print(indexThree);
                  if(indexThree != 3){
                    setState(() { 
                      indexThree = 3;
                      print(indexThree);
                    });
                  }
                  print(indexThree);
                  if(!_isContainerVisible3){
                    Future.delayed(const Duration(milliseconds: 130), () { 
                    if (this.mounted) { 
                      setState(() { 
                      _isContainerVisible3=true; 
                        print(_isContainerVisible3);
                      });
                    }});
                  }else{
                    setState(() { 
                      _isContainerVisible3=false; 
                      print(_isContainerVisible3);
                    });
                    if(indexThree == 3){
                    Future.delayed(const Duration(milliseconds: 200), () {
                    if (this.mounted) { 
                      setState(() { 
                        indexThree = 0;
                        print(indexThree);
                      });}});
                    }
                  }},
                  child: Padding(
                  padding: const EdgeInsets.fromLTRB(18,0,18,16),
                  child: Container(
                    height: 38,
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.message,size: 22, color: colorAccent,))),
                          Container(
                            // color: Colors.grey,
                            width: 288,
                            height: 38,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                  child: Text(
                                  'Langues', 
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: colorPrimary_light
                                    )),
                                ),
                                SizedBox(height: 14),
                                Container(height: 0.5,color: Colors.black54,)
                              ],
                            ),),
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                child: Icon( indexThree != 3 ? Icons.keyboard_arrow_down :  Icons.keyboard_arrow_up,size: 14,),
                              ))),
                        ],),
                      ],
                    ),
                  ),
                ),
              ),

              // the theard section -------------------------------------------------------------
              indexThree == 3 ?
              Container(
                height: 162,
                child: _isContainerVisible3 ? Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(38,0,18,16),
                      child: Container(
                        height: 38,
                        color: Colors.transparent,
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Container(
                                height: 38,
                                // color: Colors.red,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Icon(Icons.phone_iphone,size: 22, color: colorAccent,))),
                              Container(
                                // color: Colors.grey,
                                width: 268,
                                height: 38,
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                      child: Text(
                                      'العربية', 
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: colorPrimary_light
                                        )),
                                    ),
                                    SizedBox(height: 7.5),
                                    Container(height: 0.5,color: Colors.black54,)
                                  ],
                                ),),
                              Container(
                                height: 38,
                                // color: Colors.red,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4),
                                    child: Icon(Icons.keyboard_arrow_right,size: 14,),
                                  ))),
                            ],),
                          ],
                        ),
                      ),
                    ),
                  
                  Padding(
                  padding: const EdgeInsets.fromLTRB(38,0,18,16),
                  child: Container(
                    height: 38,
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.phone_iphone,size: 22, color: colorAccent,))),
                          Container(
                            // color: Colors.grey,
                            width: 268,
                            height: 38,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                  child: Text(
                                  'Francais', 
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: colorPrimary_light
                                    )),
                                ),
                                SizedBox(height: 14),
                                Container(height: 0.5,color: Colors.black54,)
                              ],
                            ),),
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                child: Icon(Icons.keyboard_arrow_right,size: 14,),
                              ))),
                        ],),
                      ],),
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.fromLTRB(38,0,18,16),
                  child: Container(
                    height: 38,
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.phone_iphone,size: 22, color: colorAccent,))),
                          Container(
                            // color: Colors.grey,
                            width: 268,
                            height: 38,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                  child: Text(
                                  'English', 
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: colorPrimary_light
                                    )),
                                ),
                                SizedBox(height: 14),
                                Container(height: 0.5,color: Colors.black54,)
                              ],
                            ),),
                          Container(
                            height: 38,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                child: Icon(Icons.keyboard_arrow_right,size: 14,),
                              ))),
                        ],),
                      ],
                    ),
                  ),
                ),
                ],
                ) : Container(),
              ) : Container(),
              // -----------------------------------------------------------------------------------------------
              // the fourth section ----------------------------------------------------------------------------
              Padding(
                padding: const EdgeInsets.fromLTRB(18,0,18,16),
                child: Container(
                  height: 38,
                  color: Colors.transparent,
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        Container(
                          height: 38,
                          // color: Colors.red,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Icon(Icons.arrow_back,size: 22, color: colorAccent,))),
                        Container(
                          // color: Colors.grey,
                          width: 288,
                          height: 38,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                child: Text(
                                'Se déconecter', 
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colorPrimary_light
                                  )),
                              ),
                              SizedBox(height: 14),
                              Container(height: 0.5,color: Colors.black54,)
                            ],
                          ),),
                      ],),
                    ],
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(-(size.width / 2 - size.width / 10), size.height - 30);

    path.quadraticBezierTo(0, (size.height / 2 - 26),
        size.width / 2 - (size.width / 12), size.height - 30);

    path.quadraticBezierTo(size.width / 2 + 20, size.height,
        size.width / 2 + size.width / 5 + 10, size.height - 70);

    path.quadraticBezierTo(size.width + size.width / 3, size.height - 360,
        size.width + (size.width / 2) - (size.width / 10), size.height - 30);

    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

