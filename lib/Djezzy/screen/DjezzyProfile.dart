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
        body: ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: double.infinity,
              height: 210,
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
                          height: 76,
                          width: 76,
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
                              Text('Paly',
                                  style: TextStyle(color: Colors.white)),
                              Text('07 96 12 31 12',
                                  style: TextStyle(color: Colors.white)),
                            ])
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: Icon(Icons.brightness_3),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )));
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
