import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:djezzy/Djezzy/utils/DjezzyExtension.dart';

import 'package:flutter/material.dart';

class DjezzyOffersHistory extends StatefulWidget {
  static String tag = '/DjezzyOffersHistory';
  @override
  _DjezzyOffersHistoryState createState() => _DjezzyOffersHistoryState();
}

class _DjezzyOffersHistoryState extends State<DjezzyOffersHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leading: Container(
            child: new Stack(
              alignment: AlignmentDirectional.centerStart,
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      back(context);
                    },
                    icon: Icon(Icons.arrow_back, color: colorPrimary_light))
              ],
            ),
          ),
          titleSpacing: -10,
          title: Text(
            'Offers History',
            style: TextStyle(
              color: colorPrimary_light,
              fontFamily: fontRegular,
              fontSize: 14.5,
            ),
          )),
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Sun. 16 Feb., 13:58',
                                style: TextStyle(
                                    color: colorPrimary_dark,
                                    fontFamily: fontRegular,
                                    fontSize: textSizeSMedium)),
                            Text('IMTIYAZ 600',
                                style: TextStyle(
                                    color: Colors.red[600],
                                    fontFamily: fontMedium,
                                    fontSize: textSizeSmall))
                          ])),
                  SizedBox(
                    height: 4,
                  ),
                  Divider(
                    color: Colors.black,
                    height: 0.5,
                  ),
                ],
              ),
            )
            // color: Colors.red,
            ),
      ),
    );
  }
}
