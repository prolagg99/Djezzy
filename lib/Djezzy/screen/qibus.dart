import 'dart:async';

import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QIBusVerification extends StatefulWidget {
  static String tag = '/QIBusVerification';

  @override
  QIBusVerificationState createState() => QIBusVerificationState();
}

class QIBusVerificationState extends State<QIBusVerification> {
  Timer _timer;
  int _start = 60;

  void startTimer() {
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
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(colorPrimary);
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      img_event1,
                      fit: BoxFit.contain,
                      width: width * 0.5,
                      height: width * 0.5,
                    ),
                    
                    SizedBox(
                      height: 16,
                    ),
                    PinEntryTextField(
                      fields: 4,
                      fontSize: textSizeLargeMedium,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _start == 0
                              ? Text('QIBus_txt_Resend',
                                  style: TextStyle(
                                      color: colorPrimary,
                                      fontSize: textSizeMedium))
                              : Text("$_start Seconds",
                                  style: TextStyle(
                                      color: colorPrimary,
                                      fontSize: textSizeMedium)),
                          Row(
                            children: <Widget>[
                             
                              SizedBox(
                                width: 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // launchScreen(context, QIBusDashboard.tag);
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: colorPrimary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}