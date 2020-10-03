import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({
    Key key, 
    this.fillColor,
    this.isSelected = false,
  }) : super(key: key);
  final bool isSelected;
  final Color fillColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //BackGround
        Container(
          alignment: Alignment.center,
          height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: isSelected ? Color(0xFF70707070)
                      :Colors.transparent,
              shape: BoxShape.circle
            ),
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: fillColor,
              shape: BoxShape.circle
            ),
          ),
        )
      ],
    );
  }
}