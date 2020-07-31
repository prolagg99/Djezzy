import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:flutter/material.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';

class DjezzyProfile extends StatefulWidget {
  static const tag = '/DjezzyProfile';
  @override
  _DjezzyProfileState createState() => _DjezzyProfileState();
}

class _DjezzyProfileState extends State<DjezzyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
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
                  padding: const EdgeInsets.fromLTRB(42, 58, 42, 0),
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
                                Text('PLAY',
                                    style: TextStyle(color: Colors.white)),
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
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 38,
                  // color: Colors.blue,
                  // height: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        // Column(
                        //   // crossAxisAlignment: CrossAxisAlignment.start,
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children: <Widget>[
                        //     Icon(Icons.radio),
                        //     // SizedBox(height: 16),
                        // //     // Container(height: 0.25,color: Colors.transparent)
                        //   ],
                        // ),
                        Container(
                          height: 38,
                          // color: Colors.red,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Icon(Icons.radio))),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              // color: Colors.grey,
                              width: 288,
                              height: 38,
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                                    child: Text(
                                    'Mes services', 
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: colorPrimary_light
                                      )),
                                  ),
                                  SizedBox(height: 15),
                                  Container(height: 0.5,color: Colors.black54,)
                                ],
                              ),),
                          ),
                        Container(
                          height: 38,
                          // color: Colors.red,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Icon(Icons.keyboard_arrow_down,size: 14,),
                            ))),

                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: <Widget>[
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 8),
                        //       child: Text('Mes Services'),
                        //     ),
                        //     SizedBox(height: 16),
                        //     Container(height: 0.25,width: 292,color: Colors.black)
                        //   ],
                        // ),
                        // Column(
                        //   children: <Widget>[
                        //     Icon(Icons.keyboard_arrow_down,size: 14,),
                        //   ],
                        // ),
                      ],),
                      // SizedBox(height: 10),
                    ],
                  ),
                ),
              )
        ],));
  }
}

class MyClipper extends CustomClipper<Path> {
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
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}
