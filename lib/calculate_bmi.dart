import 'dart:math';

class CalculateBMI {
  CalculateBMI({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0.0;
  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getResultComment() {
    if (_bmi >= 25) {
      return "You have higher than normal body wight. Try to exercise more.";
    } else if (_bmi > 18.5) {
      return "You have normal body wight. Good job!";
    } else {
      return "You have lower than normal body wight. You can eat a bit more.";
    }
  }
}
