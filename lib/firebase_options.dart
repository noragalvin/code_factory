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
    apiKey: 'AIzaSyBjkz3HVwgsbFmVVTaMO5jpydYaJTyr9jg',
    appId: '1:1044361500905:web:637f9cca43092bc7df3878',
    messagingSenderId: '1044361500905',
    projectId: 'testapp-848f9',
    authDomain: 'testapp-848f9.firebaseapp.com',
    storageBucket: 'testapp-848f9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzV4UxaCRF8tzKh1qtRFpUqay9UjGvYrk',
    appId: '1:1044361500905:android:ea4a431f8b3eb3a5df3878',
    messagingSenderId: '1044361500905',
    projectId: 'testapp-848f9',
    storageBucket: 'testapp-848f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhY-0z3C2NxCxa4bzCOfzmpSsaK545Nx4',
    appId: '1:1044361500905:ios:15654ce836ea8a34df3878',
    messagingSenderId: '1044361500905',
    projectId: 'testapp-848f9',
    storageBucket: 'testapp-848f9.appspot.com',
    androidClientId: '1044361500905-1208ulffnb87cr9b54v9s2jk8vmbgtev.apps.googleusercontent.com',
    iosClientId: '1044361500905-bmvneig9mq76p3rt2k85m4kk9n0nvrqu.apps.googleusercontent.com',
    iosBundleId: 'dev.flutter.codeFactory',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBhY-0z3C2NxCxa4bzCOfzmpSsaK545Nx4',
    appId: '1:1044361500905:ios:15654ce836ea8a34df3878',
    messagingSenderId: '1044361500905',
    projectId: 'testapp-848f9',
    storageBucket: 'testapp-848f9.appspot.com',
    androidClientId: '1044361500905-1208ulffnb87cr9b54v9s2jk8vmbgtev.apps.googleusercontent.com',
    iosClientId: '1044361500905-bmvneig9mq76p3rt2k85m4kk9n0nvrqu.apps.googleusercontent.com',
    iosBundleId: 'dev.flutter.codeFactory',
  );
}