import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyWidget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyDataGenerator.dart';

import 'DjezzySliderWidget.dart';

class DjezzySliderWidget extends StatefulWidget {
  static String tag = '/DjezzySlider';
  @override
  DjezzySliderWidgetState createState() => DjezzySliderWidgetState();
}

class DjezzySliderWidgetState extends State<DjezzySliderWidget> {
  var currentIndexPage = 0;
  List<DjezzySlider> mSliderList;

  @override
  void initState() {
    super.initState();
    mSliderList = getSliders();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    width = width - 50;
    final Size cardSize = Size(width, width / 1.6);
    return Column(
      children: <Widget>[
        T2CarouselSlider(
          viewportFraction: 0.94,
          height: cardSize.height,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          items: mSliderList.map((slider) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: cardSize.height,
                  margin: EdgeInsets.symmetric(horizontal: 2.0),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: new BorderRadius.circular(6.0),
                        child: Image.asset(
                          slider.image,
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: cardSize.height,
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(20.0),
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: <Widget>[
                      //       text(slider.title,
                      //           textColor: Colors.black,
                      //           fontSize: textSizeNormal,
                      //           fontFamily: fontSemibold),
                      //       SizedBox(height: 16),
                      //       text(slider.subTitle,
                      //           textColor: Colors.black,
                      //           fontSize: textSizeMedium,
                      //           maxLine: 2,
                      //           isCentered: true),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                );
              },
            );
          }).toList(),
          onPageChanged: (index) {
            setState(() {
              currentIndexPage = index;
            });
          },
        ),
        SizedBox(
          height: 2,
        ),
        dotsIndicator(mSliderList.length, currentIndexPage),
      ],
    );
  }
}
