# Testing

This is an example of testing software in dart. The section for flutter testing is not in this folder.

To install the test package you should follow the following link: [https://www.geeksforgeeks.org/dart-unit-testing/](https://www.geeksforgeeks.org/dart-unit-testing/), otherwise you can’t do the test and it appear the following error message:

```dart
Target of URI doesn't exist: 'package:test/test.dart'.
Try creating the file referenced by the URI, or Try using a URI for a file that does exist.
```

In particular you have to create the pubspec.yaml file with the following instructions:

```dart
name: DartTesting

dev_dependencies:
  test:

environment:
  sdk: ">=2.10.0 <3.0.0"
```

All the reference are taken from dart documentation ([https://pub.dev/packages/test](https://pub.dev/packages/test))

This is an example of testing in dart:

We have the following class to test:

```dart
class Adder {
  int Result;

  void Sum(int x, int y) {
    this.Result = x + y;
  }
}
```

And we do the following test:

```dart
import 'GeneralClass.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  Adder s = new Adder();
  s.Sum(2, 3);

  test('Test for the class Adder', () {
    expect(5, s.Result);
  });
}
```

The result is the following:
<br />
<img width="258" alt="Schermata_2022-06-09_alle_19 10 16" src="https://user-images.githubusercontent.com/88108002/172911183-6e5f14aa-e54c-49fe-b17b-eb1d712b944e.png">


