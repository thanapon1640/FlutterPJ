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
    apiKey: 'AIzaSyCa2krdSTE2_JYy9FqbVefjRKwSxID8040',
    appId: '1:994573360619:web:628533ad199d5d9ac9cdae',
    messagingSenderId: '994573360619',
    projectId: 'fluttergone-430d1',
    authDomain: 'fluttergone-430d1.firebaseapp.com',
    storageBucket: 'fluttergone-430d1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCid5_Gm2wPxFY87T4Y0Wbuwpe3mH0OGQQ',
    appId: '1:994573360619:android:7837562ad5557e3dc9cdae',
    messagingSenderId: '994573360619',
    projectId: 'fluttergone-430d1',
    storageBucket: 'fluttergone-430d1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxvaCPLGzBgqQiEnEtS8jOSN-uTIpR6Bk',
    appId: '1:994573360619:ios:d0f6b831a16f4911c9cdae',
    messagingSenderId: '994573360619',
    projectId: 'fluttergone-430d1',
    storageBucket: 'fluttergone-430d1.appspot.com',
    iosClientId: '994573360619-ggp3icnc3ja0u2el6bi757nk384iktqb.apps.googleusercontent.com',
    iosBundleId: 'com.example.presentuxui',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxvaCPLGzBgqQiEnEtS8jOSN-uTIpR6Bk',
    appId: '1:994573360619:ios:d0f6b831a16f4911c9cdae',
    messagingSenderId: '994573360619',
    projectId: 'fluttergone-430d1',
    storageBucket: 'fluttergone-430d1.appspot.com',
    iosClientId: '994573360619-ggp3icnc3ja0u2el6bi757nk384iktqb.apps.googleusercontent.com',
    iosBundleId: 'com.example.presentuxui',
  );
}
