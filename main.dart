import 'package:f_calculator/Calculator_screen.dart';
import 'package:f_calculator/cal_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const QuickCalculator());
}

class QuickCalculator extends StatelessWidget {
  const QuickCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}
