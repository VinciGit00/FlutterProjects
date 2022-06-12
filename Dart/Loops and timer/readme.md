# Loops with timer

In dart is possible to create a loop with a timer for suspend the function.

As first command you have to create the pubspec.yaml file with the following lines:

```dart
name: DartLoops

environment:
  sdk: ">=2.10.0 <3.0.0"
```

For creating the loop we use the following while(true) loop:

```dart
while (true) {
	//Do some code
}
```

Instead for sleeping the function you have to import the following package:

```dart
import 'dart:io';
```

This package allows to make the sleep function

The final result is the following:

```dart
void main(List<String> args) {
  while (true) {
    print("Loop with a sleep time of 1 second");
    sleep(Duration(seconds: 1));
  }
}
```
