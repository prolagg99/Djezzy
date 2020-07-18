import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';
import 'package:djezzy/Djezzy/utils/DjezzyColors.dart';
import 'package:djezzy/Djezzy/utils/DjezzyConstant.dart';
import 'package:flutter/material.dart';

// class TopBar extends StatefulWidget {
//   var titleName;

//   TopBar(var this.titleName);
//   @override
//   _TopBarState createState() => _TopBarState();
// }

// class _TopBarState extends State<TopBar> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 60,
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.cancel,
//             ),
//             Container(
//               padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//               child: Text(
//                 widget.titleName,
//                 style: TextStyle(
//                   fontFamily: fontMedium,
//                   fontSize: textSizeLargeMedium,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

Widget addLeadingIcon() {
  return new Container(
    padding: const EdgeInsets.fromLTRB(9.5, 0.0, 0.0, 0.0),
    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    child: new Stack(
      alignment: AlignmentDirectional.centerStart,
      children: <Widget>[
        new Image.asset(
          logo_djezzy4,
          width: 32.0,
          height: 32.0,
        ),
      ],
    ),
  );
}

class TextSized extends StatelessWidget {
  final String delay;
  final String price;
  final TextStyle textStyle;
  final int selected;
  TextSized({this.delay, this.price, this.textStyle, this.selected});

  @override
  Widget build(BuildContext context) {
    final Size txtSizeDelay = _textSize(delay, textStyle);
    final Size txtSizePrice = _textSize(price, textStyle);

    // This kind of use - meaningless. It's just an example.
    return Column(
      children: <Widget>[
        Text(
          selected == 1 ? delay : price,
          style: selected == 1
              ? TextStyle(color: colorPrimary_light, fontSize: 12)
              : TextStyle(
                  fontSize: textSizeMedium,
                  fontFamily: fontBold,
                  color: colorPrimary_dark),
        ),
        Container(
          height: 1,
          width: selected == 1
              ? (txtSizeDelay.width < txtSizePrice.width
                  ? txtSizePrice.width
                  : txtSizeDelay.width)
              : txtSizePrice.width,
          color: colorPrimary_light,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          selected == 1 ? price : delay,
          style: selected == 1
              ? textStyle
              : TextStyle(
                  color: colorAccentGreen,
                  fontSize: textSizeSmall,
                ),
        ),
      ],
    );
  }

  // Here it is!
  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
