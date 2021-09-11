import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.fillColor,
    this.isSelect = false,
  }) : super(key: key);

  final Color fillColor;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2.5),
      padding: const EdgeInsets.all(3.0),
      height: 24.0,
      width: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelect ? textLightColor : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
