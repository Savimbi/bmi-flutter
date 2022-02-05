import 'dart:math';

class BMICalculator {
  BMICalculator({required this.weight, required this.height});
  final int height;
  final int weight;

  double _bmi = 0.0;

  String getBMI() {
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

  String getRecommendation() {
    if (_bmi >= 25) {
      return "You have more than normal body weight, exercise more.";
    } else if (_bmi > 18.5) {
      return "You have a Normal weight, keep it up!";
    } else {
      return "You are underweight, please eat more!";
    }
  }
}
