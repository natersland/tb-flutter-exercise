import 'package:flutter_test/flutter_test.dart';

import 'package:tb_exercise/src/features/commons/helpers/fibonacci_helper.dart';


void main() {
  final List<Map<String, dynamic>> testCases = [
    {'input': 0, 'expected': 0},
    {'input': 1, 'expected': 1},
    {'input': 5, 'expected': 5},
    {'input': 8, 'expected': 21},
    {'input': 9, 'expected': 34},
    {'input': 22, 'expected': 75025},
  ];
  // https://byjus.com/maths/fibonacci-sequence/#:~:text=The%20Fibonacci%20Sequence%20is%20given%20as%3A,%2C%2013%2C%2021%2C%20%E2%80%A6.&text=%E2%80%9C3%E2%80%9D%20is%20obtained%20by%20adding,by%20adding%2013%20and%2021.
  // https://planetmath.org/listoffibonaccinumbers
  group('Fibonacci Function', () {
    for (var testCase in testCases) {
      test('Case ${testCase['input']} should return ${testCase['expected']}', () {
        // Arrange
        int input = testCase['input'];

        // Act
        int result = fibo(input);

        // Assert
        expect(result, equals(testCase['expected']));
      });
    }
  });
}