# Testing

## Integration testing

Integration test is an automatic test for doing automatic test for flutter apps, for example you can make press buttons, insert text in textfield and stuff like that.

## Installation

Change the pubspec.yaml to enable the Integration test.

```yaml
dev_dependencies:
  integration_test:
    sdk: flutter
  flutter_test:
    sdk: flutter
```

## Creation of the file

After this step you have to create the test file and the test folder in the folder test of your flutter project.

The 2 packages to import required are:

```dart
import 'package:flutter_driver/driver_extension.dart';
import 'package:integration_testing/main.dart' as app;
```

The second one is the main of your app.

Instead for app.dart you have to write the following code:

```dart
import 'package:flutter_driver/driver_extension.dart';
import 'package:integration_testing/main.dart' as app;

void main() {
  // This line enables the extension.
  enableFlutterDriverExtension();

  // Call the `main()` function of the app or call `runApp` with
  // any widget you are interested in testing.
  app.main();
}
```

## Example

```dart
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Integration testing',
    () {
      //Login screen
      final usernameField = find.byValueKey('Username');
      final passwordField = find.byValueKey('Password');
      final ButtonField = find.byValueKey('Button');

      //Home screen
      final ButtonField2 = find.byValueKey('Button2');

      FlutterDriver? driver;

      Future<bool> isPresent(SerializableFinder byValueKey,
          {Duration timeout = const Duration(seconds: 1)}) async {
        try {
          await driver!.waitFor(byValueKey, timeout: timeout);
          return true;
        } catch (exception) {
          return false;
        }
      }

      // Connect to the Flutter driver before running any tests.
      setUpAll(() async {
        driver = await FlutterDriver.connect();
      });

      // Close the connection to the driver after the tests have completed.
      tearDownAll(() async {
        if (driver != null) {
          driver?.close();
        }
      });

      //First page
      test(
        "HomePage",
        () async {
          await driver?.tap(usernameField);
          await driver?.enterText("tadas1@gmail.com");
          await driver?.tap(passwordField);
          await driver?.enterText("prova");
          await driver?.tap(ButtonField);

          //driver?.scrollUntilVisible(
          // Scroll through the list
          // listFinder,
          // Until finding this item
          // itemFinder,
          // To scroll down the list, provide a negative value to dyScroll.
          // Ensure that this value is a small enough increment to
          // scroll the item into view without potentially scrolling past it.
          //
          // To scroll through horizontal lists, provide a dxScroll
          // property instead.
          //dyScroll: -300.0,
          //);
        },
      );

      //Second page
      test(
        "Page2",
        () async {
          await driver?.tap(ButtonField2);
        },
      );
    },
  );
}
```

## How to run the code

To run the test use the following code:

```
flutter drive --target=test_driver/app.dart
```

## Documentation

- [https://docs.flutter.dev/testing/integration-tests](https://docs.flutter.dev/testing/integration-tests)

## References

- Link to the code: [https://github.com/tadaspetra/todoapp/blob/master/todo_app/test_driver/app_test.dart](https://github.com/tadaspetra/todoapp/blob/master/todo_app/test_driver/app_test.dart)
- Scrollable list: [https://flutter-ko.dev/docs/cookbook/testing/integration/scrolling](https://flutter-ko.dev/docs/cookbook/testing/integration/scrolling)
- [https://www.youtube.com/watch?v=E2xO_u2WMhA](https://www.youtube.com/watch?v=E2xO_u2WMhA) (most important one)
- [https://www.youtube.com/watch?v=Vfi0uyDWIuM](https://www.youtube.com/watch?v=Vfi0uyDWIuM)
