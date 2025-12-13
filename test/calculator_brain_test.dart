import 'package:flutter_test/flutter_test.dart';
import 'package:bmi/calculator_brain.dart';

void main() {
  group('CalculatorBrain', () {
    test('calculates BMI correctly for normal weight', () {
      final calc = CalculatorBrain(height: 180, weight: 70);
      expect(calc.calculateBMI(), '21.6');
      expect(calc.getResult(), 'Normal');
      expect(calc.getInterpretation(), contains('normal body weight'));
    });

    test('calculates BMI correctly for overweight', () {
      final calc = CalculatorBrain(height: 170, weight: 80);
      // 80 / 1.7^2 = 27.68
      expect(calc.calculateBMI(), '27.7');
      expect(calc.getResult(), 'Overweight');
    });

    test('calculates BMI correctly for underweight', () {
      final calc = CalculatorBrain(height: 180, weight: 50);
      // 50 / 1.8^2 = 15.43
      expect(calc.calculateBMI(), '15.4');
      expect(calc.getResult(), 'Underweight');
    });
  });
}
