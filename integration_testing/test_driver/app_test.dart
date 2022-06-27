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
