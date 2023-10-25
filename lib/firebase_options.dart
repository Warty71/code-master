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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdvX7978GxedegPuCl1PpK01DXhg7xeKc',
    appId: '1:629481766656:android:cb2dbf7907d2c8857cbde5',
    messagingSenderId: '629481766656',
    projectId: 'code-master-73d16',
    databaseURL: 'https://code-master-73d16-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'code-master-73d16.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxhus6QdiBfLN185OoQ7aetaufEz9JSd0',
    appId: '1:629481766656:ios:c48ce4f4b77fe0cd7cbde5',
    messagingSenderId: '629481766656',
    projectId: 'code-master-73d16',
    databaseURL: 'https://code-master-73d16-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'code-master-73d16.appspot.com',
    androidClientId: '629481766656-olmb3phqb15j1l2sgp7s3rine6ur2i9f.apps.googleusercontent.com',
    iosClientId: '629481766656-e7pg68mvlh6644ketjdsd2dvemr653c8.apps.googleusercontent.com',
    iosBundleId: 'com.master.code',
  );
}
