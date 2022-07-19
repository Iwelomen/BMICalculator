import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, @required this.onPressedButton});

  final IconData icon;
  final VoidCallback onPressedButton;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressedButton,
      disabledElevation: 6,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}