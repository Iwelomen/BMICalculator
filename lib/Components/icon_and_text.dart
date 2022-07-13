import 'package:flutter/material.dart';

import 'constant.dart';



class IconAndText extends StatelessWidget {
  IconAndText({this.customIcon, this.customText});

  final IconData? customIcon;
  final String? customText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          customIcon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          customText ?? '',
          style: kCustomTextStyle,
        )
      ],
    );
  }
}