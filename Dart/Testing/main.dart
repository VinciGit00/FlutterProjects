import 'GeneralClass.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  Adder s = new Adder();
  s.Sum(2, 3);

  test('Test for the class Adder', () {
    expect(5, s.Result);
  });
}
