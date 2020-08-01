import 'package:djezzy/Djezzy/screen/DjezzyEmergency.dart';
import 'package:djezzy/Djezzy/screen/DjezzyFlexy.dart';
import 'package:djezzy/Djezzy/screen/DjezzyPrimary.dart';
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

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
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
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
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
                    setState(() {
                      if(indexOne != 1)
                        indexOne = 1;
                      else if(indexOne == 1) indexOne = 0;
                      print(indexOne);
                    });
                  },
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
                  ),
                ),
              ),
            ): Container(),

            // ----------------------------------------------------------------------------------------
             GestureDetector(
              onTap: (){
                    setState(() {
                      if(indexTwo != 2)
                        indexTwo = 2;
                      else if(indexTwo == 2){
                        indexTwo = 0;
                        indexTwoChildren = 0;
                      } 
                      print(indexTwo);
                    });
                  },
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
            GestureDetector(
              onTap: (){
                setState(() {
                    launchScreen(context, DjezzyEmergency.tag);
                });
              },
                child: Container(
                color: Colors.blueGrey,
                child: Column(
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
                  ),
                ),
                ]),
              ),
            ) : Container(),
            // the seconde section child ----------------------------------------------------------------------------
            indexTwoChildren == 4 ?
            GestureDetector(
              onTap: (){
                launchScreen(context, DjezzyPrimary.tag);
              },
                child: Column(
                children: <Widget>[
                  Padding(
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
                Padding(
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
              Padding(
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
              ), ],
              ),
            ) : Container(),
            // --------------------------------------------------------------------------------------------------
            GestureDetector(
              onTap: (){
                    setState(() {
                      if(indexThree != 3)
                        indexThree = 3;
                      else if(indexThree == 3) indexThree = 0;
                      print(indexThree);
                    });
                  },
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
            Column(
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

