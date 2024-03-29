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
    apiKey: 'AIzaSyD2aT0_WPQxazlOEwH_MUDbOQ6ln-obhc8',
    appId: '1:105778870352:web:bb5d251b4e444fb3ff3955',
    messagingSenderId: '105778870352',
    projectId: 'hashitta-baas',
    authDomain: 'hashitta-baas.firebaseapp.com',
    storageBucket: 'hashitta-baas.appspot.com',
    measurementId: 'G-B14CZCJ586',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGJd5S6Pwg5Al6VonaNhc81yL4ITbJgeg',
    appId: '1:105778870352:android:0f3a822a05a63ad6ff3955',
    messagingSenderId: '105778870352',
    projectId: 'hashitta-baas',
    storageBucket: 'hashitta-baas.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCA6HCDd_1ZQR176T-k4rZB-W52wbSlUsk',
    appId: '1:105778870352:ios:2e22f9a5d609a6bbff3955',
    messagingSenderId: '105778870352',
    projectId: 'hashitta-baas',
    storageBucket: 'hashitta-baas.appspot.com',
    iosBundleId: 'com.example.shoplist',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCA6HCDd_1ZQR176T-k4rZB-W52wbSlUsk',
    appId: '1:105778870352:ios:ef0ef571d84bd1dbff3955',
    messagingSenderId: '105778870352',
    projectId: 'hashitta-baas',
    storageBucket: 'hashitta-baas.appspot.com',
    iosBundleId: 'com.example.shoplist.RunnerTests',
  );
}
