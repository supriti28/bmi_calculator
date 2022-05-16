import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class Calculate {
  Calculate({@required this.height, @required this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi >= 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String getComment() {
    if (_bmi >= 25)
      return 'You have higher than normal body weight.Need to do exercise more!';
    else if (_bmi >= 18.5)
      return 'You have a normal body weight.Good Job!';
    else
      return 'You have lower than normal body weight.Need to eat more!';
  }
}
