import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  double _bmi;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25) return 'Overweight';
    else if(_bmi>=18.5) return 'Normal';
    else return 'Underweight';
  }

  String getExplain(){
    if(_bmi>=25) return 'Do exercises';
    else if(_bmi>=18.65) return 'You are ok. Keep it on this way';
    else return 'Eat more!!!';
  }
}
