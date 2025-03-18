// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBXXNYeLQB2SaDLvWw0AMc7ReBVgFzZ0Q4',
    appId: '1:165709475920:web:ae2640a1a5b530519fe155',
    messagingSenderId: '165709475920',
    projectId: 'shop-dacs3',
    authDomain: 'shop-dacs3.firebaseapp.com',
    storageBucket: 'shop-dacs3.appspot.com',
    measurementId: 'G-X5YG8LK8R9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBdwGeB-2Eng4NNtuXc0rYjy_pdxiL5ekM',
    appId: '1:165709475920:android:127f846e470bd2b19fe155',
    messagingSenderId: '165709475920',
    projectId: 'shop-dacs3',
    storageBucket: 'shop-dacs3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCL_5HwAT4V4LKwVAXpRO2_Aw2XnY3xiTo',
    appId: '1:165709475920:ios:49126bffdd277e7e9fe155',
    messagingSenderId: '165709475920',
    projectId: 'shop-dacs3',
    storageBucket: 'shop-dacs3.appspot.com',
    iosBundleId: 'com.example.crud',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCL_5HwAT4V4LKwVAXpRO2_Aw2XnY3xiTo',
    appId: '1:165709475920:ios:49126bffdd277e7e9fe155',
    messagingSenderId: '165709475920',
    projectId: 'shop-dacs3',
    storageBucket: 'shop-dacs3.appspot.com',
    iosBundleId: 'com.example.crud',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBXXNYeLQB2SaDLvWw0AMc7ReBVgFzZ0Q4',
    appId: '1:165709475920:web:76a58f6536688c949fe155',
    messagingSenderId: '165709475920',
    projectId: 'shop-dacs3',
    authDomain: 'shop-dacs3.firebaseapp.com',
    storageBucket: 'shop-dacs3.appspot.com',
    measurementId: 'G-04T61SVZJ8',
  );
}
