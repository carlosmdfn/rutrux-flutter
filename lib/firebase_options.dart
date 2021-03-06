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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC6zpRjlggbR1PcVHdDwlYQfGqwSCEF3bI',
    appId: '1:121940357679:web:afbaa2dfabce3a23fb4cda',
    messagingSenderId: '121940357679',
    projectId: 'rutrux-firebase',
    authDomain: 'rutrux-firebase.firebaseapp.com',
    databaseURL: 'https://rutrux-firebase-default-rtdb.firebaseio.com',
    storageBucket: 'rutrux-firebase.appspot.com',
    measurementId: 'G-1K4H5P22MN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDk2ToGcUadsvcfMnGJy-JuqxoFrjUVmVo',
    appId: '1:121940357679:android:d59d71c363237bb5fb4cda',
    messagingSenderId: '121940357679',
    projectId: 'rutrux-firebase',
    databaseURL: 'https://rutrux-firebase-default-rtdb.firebaseio.com',
    storageBucket: 'rutrux-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCPG1lfD8tvltg7_UVn6m9jkSCNkU2iYlA',
    appId: '1:121940357679:ios:972806cf57821787fb4cda',
    messagingSenderId: '121940357679',
    projectId: 'rutrux-firebase',
    databaseURL: 'https://rutrux-firebase-default-rtdb.firebaseio.com',
    storageBucket: 'rutrux-firebase.appspot.com',
    androidClientId: '121940357679-d75vu9vv0kjs525cviqqvi6g4i2uqn3o.apps.googleusercontent.com',
    iosClientId: '121940357679-73stvc0du5b2pmpq8hkgk9ikueesgmkv.apps.googleusercontent.com',
    iosBundleId: 'com.example.rutruxApp',
  );
}
