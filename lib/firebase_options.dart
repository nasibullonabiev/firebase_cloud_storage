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
    apiKey: 'AIzaSyBi4rR-ejR1-hO8eoUJ-WgG6Oodpt8sQew',
    appId: '1:291734430489:web:231a76eb1c2e3ff4a65b88',
    messagingSenderId: '291734430489',
    projectId: 'flutter-storage-1ba43',
    authDomain: 'flutter-storage-1ba43.firebaseapp.com',
    storageBucket: 'flutter-storage-1ba43.appspot.com',
    measurementId: 'G-3TV9KWF6WM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCb7yG6_dUYeald9A0JJbdKYqhRYaq8nPk',
    appId: '1:291734430489:android:755ab5d0f3a2fe6fa65b88',
    messagingSenderId: '291734430489',
    projectId: 'flutter-storage-1ba43',
    storageBucket: 'flutter-storage-1ba43.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMhzK5I9uu8qiCqWIDTlhudclWeucVMGg',
    appId: '1:291734430489:ios:615f2f3257f725c0a65b88',
    messagingSenderId: '291734430489',
    projectId: 'flutter-storage-1ba43',
    storageBucket: 'flutter-storage-1ba43.appspot.com',
    iosClientId: '291734430489-t8i9leip2mmmtkvrk3cr8qe424e9h03g.apps.googleusercontent.com',
    iosBundleId: 'com.pdp.firebaseCloudStorage',
  );
}