import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    this._bmi = weight / pow(height / 100, 2);
    return this._bmi.toStringAsFixed(1);
  }

  String geResults() {
    if (this._bmi >= 25) {
      return 'Overwight';
    } else if (this._bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (this._bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (this._bmi > 18.5) {
      return 'You have a normal weight. Good job.';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
