import 'package:djezzy/Djezzy/screen/DjezzyDashboard.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DjezzyLoading extends StatefulWidget {
  static String tag = '/DjezzyLoading';
  @override
  _DjezzyLoadingState createState() => _DjezzyLoadingState();
}

class _DjezzyLoadingState extends State<DjezzyLoading> {
  void loading() async {
    await Future.delayed(Duration(seconds: 3));
    launchScreen(context, DjezzyDashboard.tag);
  }

  @override
  void initState() {
    super.initState();
    loading();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(Colors.black);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SpinKitCircle(
          color: Colors.black,
          size: 60.0,
        ),
      ),
    );
  }
}
