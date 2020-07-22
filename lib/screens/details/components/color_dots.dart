import 'package:flutter/material.dart';

import '../../../constants.dart';


class ColorDot extends StatelessWidget {
  ColorDot({
    this.fillColor,this.isSelected=false,
  }) ;

  final bool isSelected;
  final Color fillColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding/2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected? Color(0xff7070707): Colors.transparent
          )
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: fillColor
        ),
      ),

    );
  }
}
