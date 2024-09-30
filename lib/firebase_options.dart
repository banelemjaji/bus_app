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
    apiKey: 'AIzaSyCKm4Z2H-6fwijqi_-p-CjiOhfccIIkcDo',
    appId: '1:12615241557:web:fa0f43b13bfc2e427729dc',
    messagingSenderId: '12615241557',
    projectId: 'bus-app-d3c4d',
    authDomain: 'bus-app-d3c4d.firebaseapp.com',
    storageBucket: 'bus-app-d3c4d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKalelrx4wUmL1LUo_CZXYZMUvYeUaBKg',
    appId: '1:12615241557:android:a4d322a4ba53c2f37729dc',
    messagingSenderId: '12615241557',
    projectId: 'bus-app-d3c4d',
    storageBucket: 'bus-app-d3c4d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyARHO_frJFaqit9VzPYgQ7Tx-2I3zC-66Q',
    appId: '1:12615241557:ios:cd12018ea45b90ed7729dc',
    messagingSenderId: '12615241557',
    projectId: 'bus-app-d3c4d',
    storageBucket: 'bus-app-d3c4d.appspot.com',
    iosBundleId: 'com.example.busApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyARHO_frJFaqit9VzPYgQ7Tx-2I3zC-66Q',
    appId: '1:12615241557:ios:cd12018ea45b90ed7729dc',
    messagingSenderId: '12615241557',
    projectId: 'bus-app-d3c4d',
    storageBucket: 'bus-app-d3c4d.appspot.com',
    iosBundleId: 'com.example.busApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCKm4Z2H-6fwijqi_-p-CjiOhfccIIkcDo',
    appId: '1:12615241557:web:aec1539a1fa5cac47729dc',
    messagingSenderId: '12615241557',
    projectId: 'bus-app-d3c4d',
    authDomain: 'bus-app-d3c4d.firebaseapp.com',
    storageBucket: 'bus-app-d3c4d.appspot.com',
  );
}