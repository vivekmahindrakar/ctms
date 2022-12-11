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
    apiKey: 'AIzaSyDK6mZPZiIxHbfYcdgNh2na3qSyQrOs8m0',
    appId: '1:1031456933013:web:4311e9ac5e183c27c6479c',
    messagingSenderId: '1031456933013',
    projectId: 'ctms-26405',
    authDomain: 'ctms-26405.firebaseapp.com',
    storageBucket: 'ctms-26405.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDW_OCinnSn-G9qk_6Q_wlLtB2oF3d73fg',
    appId: '1:1031456933013:android:bd3cdbeff8dddf1ac6479c',
    messagingSenderId: '1031456933013',
    projectId: 'ctms-26405',
    storageBucket: 'ctms-26405.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCO0p4g9dqulY3GEYPYEFpBVbEnOzKlLHQ',
    appId: '1:1031456933013:ios:b212e70dddbcce31c6479c',
    messagingSenderId: '1031456933013',
    projectId: 'ctms-26405',
    storageBucket: 'ctms-26405.appspot.com',
    iosClientId: '1031456933013-pglavir74o7mjtof3dsk9qth7g41gb9d.apps.googleusercontent.com',
    iosBundleId: 'com.example.ctms',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCO0p4g9dqulY3GEYPYEFpBVbEnOzKlLHQ',
    appId: '1:1031456933013:ios:b212e70dddbcce31c6479c',
    messagingSenderId: '1031456933013',
    projectId: 'ctms-26405',
    storageBucket: 'ctms-26405.appspot.com',
    iosClientId: '1031456933013-pglavir74o7mjtof3dsk9qth7g41gb9d.apps.googleusercontent.com',
    iosBundleId: 'com.example.ctms',
  );
}
