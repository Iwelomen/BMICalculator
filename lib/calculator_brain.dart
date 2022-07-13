
import 'dart:math';

class CalculatorBrain {

  int weight;
  int height;
  double _bmi = 0;

  CalculatorBrain({required this.weight, required this.height});

  String CalculateBMI() {
    double _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18 && _bmi <= 24) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, you need to exercise more';
    } else if (_bmi > 18 && _bmi <= 24) {
      return 'You have a normal body weight, good job!';
    } else {
      return 'You have a lower than normal body weight, you need to eat more';
    }
  }
}