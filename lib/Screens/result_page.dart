import 'package:calculator_bmi/Components/calculate_button.dart';
import 'package:calculator_bmi/Components/constant.dart';
import 'package:calculator_bmi/Components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult, required this.bmiResultInterpretation, required this.bmiResultText});
  final String bmiResult;
  final String bmiResultText;
  final String bmiResultInterpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Text(
                    bmiResultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    bmiResultInterpretation ,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          CalculateButton(buttonTitle: 'RE-CALCULATE',
            onTap: () {
            Navigator.pop(context);
            },)
        ],
      ),
    );
  }
}
