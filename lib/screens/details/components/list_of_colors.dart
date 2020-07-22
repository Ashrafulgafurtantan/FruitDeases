import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'color_dots.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          ColorDot(fillColor: Color(0xffff5200),),
          ColorDot(fillColor: Color(0xff80988a),
            isSelected: true,
          ),
          ColorDot(fillColor: kPrimaryColor,),
          //  ColorDot(),
          //  ColorDot()
        ],
      ),
    );
  }
}
