import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Future.value 테스트', () {
    var value = Future.value(99);
    expect(value, 99);
  });

  test('Future.value 테스트2', () {
    var value = Future.value(99);
    expect(value, Future.value(99)); //둘다 퓨처의 인스턴스지만 같은 인스턴스는 아니라서 실패
  });

  test('completion 함수를 활용한 Future.value 테스트', () {
    var value = Future.value(99);

    /// Future를 테스트 할 때는 기대값을 completion으로 해줘야 한다
    /// completion 함수는 퓨처가 완료될 때까지 테스트를 종류하지 않도록 해준다
    expect(value, completion(99));
  });
}
