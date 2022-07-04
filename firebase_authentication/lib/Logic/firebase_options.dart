// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCA-wyjDyE1qRlbQmuGSMuCQF47UPYAv80',
    appId: '1:236425765874:web:39139b2d381b443f4c416b',
    messagingSenderId: '236425765874',
    projectId: 'flutter-ui-2ab8a',
    authDomain: 'flutter-ui-2ab8a.firebaseapp.com',
    storageBucket: 'flutter-ui-2ab8a.appspot.com',
    measurementId: 'G-ZHYK2JWCVW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQmp1nP6B78pep2DnKzLAEe-k-RQ42xnQ',
    appId: '1:236425765874:android:b5b09e47e27811b94c416b',
    messagingSenderId: '236425765874',
    projectId: 'flutter-ui-2ab8a',
    storageBucket: 'flutter-ui-2ab8a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCa9STOihZC-NydHF_hxD55ulLVXeTBwHQ',
    appId: '1:236425765874:ios:4c64a505a46c62334c416b',
    messagingSenderId: '236425765874',
    projectId: 'flutter-ui-2ab8a',
    storageBucket: 'flutter-ui-2ab8a.appspot.com',
    iosClientId: '236425765874-2t3v8tfhm4ga3cn17pkkr9lhec8183k7.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuthentication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCa9STOihZC-NydHF_hxD55ulLVXeTBwHQ',
    appId: '1:236425765874:ios:4c64a505a46c62334c416b',
    messagingSenderId: '236425765874',
    projectId: 'flutter-ui-2ab8a',
    storageBucket: 'flutter-ui-2ab8a.appspot.com',
    iosClientId: '236425765874-2t3v8tfhm4ga3cn17pkkr9lhec8183k7.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuthentication',
  );
}
