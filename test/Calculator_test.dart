import 'dart:math';

import 'package:flutter_test_code/Calculator.dart';
import 'package:test/test.dart';

void main() {
  /// group(description, body) - 여러 테스트를 하나의 단위로 묶을 수 있다, 기능은 test() 함수와 동일
  group('calculator test group', () {
    /// Calculator 객체 선언
    Calculator cal = Calculator();

    ///더하기
    test('덧셈 테스트', () {
      expect(cal.add(100, 200), 300);
    });

    ///빼기
    test('뺄셈 테스트', () {
      expect(cal.minus(50, 20), 30);
    });

    ///제곱하기
    test('제곱 테스트', () {
      expect(cal.square(10), 10 * 10);
    });
  });
}
