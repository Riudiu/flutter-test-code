import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Future.value 테스트', () {
    var value = Future.value(99);
    expect(value, 99);
  });

  test('Future.value 테스트2', () {
    var value = Future.value(99);
    expect(value, Future.value(99));
  });

  test('completion 함수를 활용한 Future.value 테스트', () {
    var value = Future.value(99);
    expect(value, completion(99));
  });
}
