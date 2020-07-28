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
        body: ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: double.infinity,
              height: 264,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [colorAccent2, colorAccent]),
              ),
              child: Center(
                child: Text('Play'),
              ),
            )));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 20);
    // path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}
