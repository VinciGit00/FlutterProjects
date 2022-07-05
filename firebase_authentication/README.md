# Firebase authentication

## Requirements

- Library required:
  - Flutterfire UI, to install it run on the terminal the following command:
  ```
  flutter pub add flutterfire_ui
  ```
  - Firebase core:
  ```
  flutter pub add firebase_core
  ```
  - Google sign in
  ```dart
  flutter pub add google_sign_in
  ```
- Terminal application required:
  - Firebase CLI, to install it run on the terminal the following command:
    ```
    npm install -g firebase-tools
    ```

## Instructions

To activate flutterfire UI use the following command:

```
dart pub global activate flutterfire_cli
```

Then copy the string and add it to the path of the terminal (just copy and paste the line on your terminal)

![Schermata 2022-07-03 alle 15.12.39.png](Firebase%20authentication%206453a1bc96c74042a6b1ee7d63faa0ab/Schermata_2022-07-03_alle_15.12.39.png)

After this, run on your terminal to create your firebase project:

```
flutterfire configure
```

These are my information to create the project

web 1:236425765874:web:39139b2d381b443f4c416b
android 1:236425765874:android:b5b09e47e27811b94c416b
ios 1:236425765874:ios:4c64a505a46c62334c416b
macos 1:236425765874:ios:4c64a505a46c62334c416b

After this you have to enable multidex with the following tutorial:

- [https://www.youtube.com/watch?v=afW7dAndEyw](https://www.youtube.com/watch?v=afW7dAndEyw)

To enable multidex follow the following tutorial:

The build.gradle file will be in this way:

```dart
defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.example.firebase_authentication"
        // You can update the following values to match your application needs.
        // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-build-configuration.
        minSdkVersion 21
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }
```

## Initialization of Firebase in Flutter

To enable in your main.dart the firebase configuration use:

```dart
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
```

## References

- Firebase CLI reference: [https://firebase.google.com/docs/cli](https://firebase.google.com/docs/cli)
- Multidex installation: [https://www.youtube.com/watch?v=afW7dAndEyw](https://www.youtube.com/watch?v=afW7dAndEyw)x
- Multidex stack overflow: [https://stackoverflow.com/questions/49886597/multidex-issue-with-flutter?answertab=trending#tab-top](https://stackoverflow.com/questions/49886597/multidex-issue-with-flutter?answertab=trending#tab-top)
- Firebase auth video tutorial: [https://www.youtube.com/watch?v=JgqcrQvGFzY](https://www.youtube.com/watch?v=JgqcrQvGFzY)
