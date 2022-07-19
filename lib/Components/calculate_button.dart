import 'package:calculator_bmi/Screens/result_page.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({this.buttonTitle, this.onTap});
  final String buttonTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
      ),
    );
  }
}