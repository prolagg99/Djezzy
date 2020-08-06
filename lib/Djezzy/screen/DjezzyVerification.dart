import 'dart:async';
import 'package:djezzy/Djezzy/screen/DjezzyDashboard.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DjezzyVerification extends StatefulWidget {
  static String tag = '/DjezzyVerification';
  @override
  _DjezzyVerificationState createState() => _DjezzyVerificationState();
}

class _DjezzyVerificationState extends State<DjezzyVerification> {
  final number = "0796123112"
      .replaceAllMapped(RegExp(r".{2}"), (match) => "${match.group(0)} ");
  Color color1 = Colors.red[100]; // color of border -> turn to be white
  Color color2 = Colors.white; // color of bg -> turn to be pink
  Color color3 = Colors.red[600]; // color of text turn to be white

  bool isTextFiledFocus = false;
  bool showBottomSheet = false;

  Timer _timer;
  int _start = 59;

 @override
  void initState() {
    super.initState();
  SchedulerBinding.instance.addPostFrameCallback((_) {
 const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
});
}
  @override
  Widget build(BuildContext context) {
    changeStatusColor(Colors.black);
    return SafeArea(
      child : Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
                  child: Container(
            child: Column(
              children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: Image(
                    image: AssetImage(logo_djezzy),
                    height: 58,
                    width: 58,
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  'Veullez patienter, un SMS contenant le code d\'activation a été transmis au numéro \n' + number ,
                  
                  textAlign : TextAlign.center,
                style: TextStyle(color: colorPrimary_light,fontSize: 16,fontFamily: fontSemibold),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 58,
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Row(
                            children: <Widget>[
                            Expanded(
                              child: Container(
                              // color: Colors.red,
                              height: 24,
                                child: TextField(
                                    maxLength: 8,
                                    enableInteractiveSelection: false,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: colorPrimary_light, fontSize: 17,height: 1.4),
                                    cursorColor: Colors.green[800],
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                                      border: InputBorder.none,
                                      counterText: "",
                                      hintText: "** ** **"
                                    ),
                                    ),
                              ),
                            ),
                          ],),
                        ),
                        // SizedBox(height: 2),
                        Container(height: 1,width: 142,color: Colors.red)
                      ],),
                    ),
                  ],
                ),
              ),
              !isTextFiledFocus ? 
              ButtonTheme(
                      minWidth: 146,
                      height: 46.0,
                      child: RaisedButton(
                          padding: const EdgeInsets.all(6.0),
                          color: color2,
                          onPressed: () {
                            setState(() {
                              color1 = Colors.white;
                              color2 = Colors.red[100];
                              color3 = Colors.white;
                            });
                          Future.delayed(const Duration(milliseconds: 100), () { 
                              if (this.mounted) { 
                                setState(() { 
                                  isTextFiledFocus = true;
                                });
                              }});
                          Future.delayed(const Duration(milliseconds: 800), () { 
                          if (this.mounted) { 
                            setState(() { 
                              color1 = Colors.red[100]; 
                              color2 = Colors.white; 
                              color3 = Colors.red[600];
                              isTextFiledFocus = false;
                              launchScreen(context, DjezzyDashboard.tag);
                            });
                          }});
                          },
                          child: new Text("CONNECTER",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: fontBold,
                                  color: ( color3 ) )),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(
                                  width: 5,
                                  color: color1,
                    ),
                      )))  
              : Container(
              height: 46,
              width:   146 ,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 5,
                    color: Colors.white
                        /*colorPrimary_light */),
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30.0)),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'CONNECTER',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: fontSemibold,
                    fontSize: 17,
                    color: colorPrimary_light),
                ),
              ),
                ),
              SizedBox(height: 14),
              Text('00:'+"$_start",style: TextStyle(color: colorPrimary_light)),
              SizedBox(height: 34),
              isTextFiledFocus ?
              SpinKitCircle(
                color: Colors.red[600],
                size: 46.0,
              ) : Container(),
              ],),
          ),
        ),
      ),
    );
  }
}