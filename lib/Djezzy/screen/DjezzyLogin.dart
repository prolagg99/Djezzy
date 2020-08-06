import 'dart:async';
import 'package:djezzy/Djezzy/screen/DjezzyVerification.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class DjezzyLogin extends StatefulWidget {
  static String tag = '/DjezzyLogin';
  @override
  _DjezzyLoginState createState() => _DjezzyLoginState();
}

class _DjezzyLoginState extends State<DjezzyLogin> {
  Color color1 = Colors.red[100]; // color of border -> turn to be white
  Color color2 = Colors.white; // color of bg -> turn to be pink
  Color color3 = Colors.red[600]; // color of text turn to be white


 bool isTextFiledFocus = false;
 bool showBottomSheet = false;
  @override
  Widget build(BuildContext context) {
    changeStatusColor(Colors.black);
    return SafeArea(
      child: Scaffold(
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
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text('Insérez votre numéro de téléphone',
                style: TextStyle(color: colorPrimary_light,fontSize: 16,fontFamily: fontSemibold),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Text('+2137',style: TextStyle(fontSize: 17,color: colorPrimary_light)),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                child: TextField(
                                    maxLength: 8,
                                    enableInteractiveSelection: false,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: colorPrimary_light, fontSize: 17),
                                    cursorColor: Colors.green[800],
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 13),
                                      border: InputBorder.none,
                                      counterText: "",
                                    ),
                                    ),
                              ),
                            ),
                          ],),
                        ),
                        SizedBox(height: 2),
                        Container(height: 1,width: 142,color: Colors.red)
                      ],),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              !isTextFiledFocus ? 
              ButtonTheme(
                      minWidth: 146,
                      height: 46.0,
                      child: RaisedButton(
                          padding: const EdgeInsets.all(6.0),
                          color: color2,
                          onPressed: () {
                            Future.delayed(const Duration(milliseconds: 600), () { 
                            if (this.mounted) { 
                             showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 230,
                                      decoration: BoxDecoration(
                                        color: colorPrimary,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(18.0),
                                          topRight: const Radius.circular(18.0),
                                        ),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          leftContainerShowBottomSheet(),
                                          Padding(
                                              padding: const EdgeInsets.fromLTRB(25, 14, 20, 11),
                                              child: Container(
                                                  // color: Colors.red,
                                                  width: 280,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text('Oops !',
                                                              style: TextStyle(
                                                                  color: colorPrimary_light, fontSize: 20)),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                                        child: Container(
                                                          // color: Colors.red,
                                                          height: 70,
                                                          width: 70,
                                                          child: Image(
                                                            image: AssetImage(img_danger),
                                                            height: 62,
                                                            width: 62,
                                                        )),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 00),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text('Le numéro inséré est incorrect. Veuillez vérifier le numéro.',
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                    color: colorPrimary_light,
                                                                    fontSize: 16)),
                                                            SizedBox(height: 12),
                                                            Container(
                                                                height: 1,
                                                                width: 320,
                                                                color: colorPrimary_light),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: GestureDetector(
                                                            onTap: (){
                                                              launchScreen(context, DjezzyVerification.tag);
                                                            },
                                                              child: Padding(
                                                              padding:
                                                                  const EdgeInsets.fromLTRB(10, 18, 10, 0),
                                                              child: Text('REESSAYER',
                                                              style: TextStyle(
                                                                      color: colorPrimary_light,
                                                                      fontFamily: fontSemibold,
                                                                      fontSize: 14.75)),
                                                              ),
                                                        ),
                                                      )
                                                    ],
                                                  )))
                                        ],
                                      ));
                                },
                              ).whenComplete(() async {
                              showBottomSheet = false;
                            }); }});
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
                          Future.delayed(const Duration(milliseconds: 400), () { 
                          if (this.mounted) { 
                            setState(() { 
                              color1 = Colors.red[100]; 
                              color2 = Colors.white; 
                              color3 = Colors.red[600];
                              isTextFiledFocus = false;
                            });
                          }});
                          },
                          child: new Text("SOUMETTRE",
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
                  'SOUMETTRE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: fontSemibold,
                    fontSize: 17,
                    color: colorPrimary_light),
                ),
              ),
                ),
              SizedBox(height: 14),
              isTextFiledFocus ?
              SpinKitCircle(
                color: Colors.red[600],
                size: 46.0,
              ) : Container()
              ],),
          ),
        ),
      ),
    );
  }
}

