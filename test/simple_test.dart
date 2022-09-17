import 'dart:math';
import 'package:test/test.dart';

void main() {
  /// test(description, body) - 왼쪽은 테스트에 대해 서술, 오른쪽은 실행 함수
  test('should be lowercase', () {
    String hello = 'Hello World';

    /// expect(actual, matcher) - 오른쪽은 테스트를 실행했을 때의 기대값이고, 왼쪽은 실제값
    expect(hello.toLowerCase(), 'hello world');
  });

  test('should contain name', () {
    String welcome = 'Welcome, Riudiu';

    expect(welcome.contains('riudiu'), true); // 테스트 실패! 소문자 riudiu는 찾을 수 없다
  });
}
