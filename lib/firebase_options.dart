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
    apiKey: 'AIzaSyCxvRrP1HzqRvhwg9FzAluR2zqFDTAFpko',
    appId: '1:660203016448:web:706d920decec3e5ab7a3e5',
    messagingSenderId: '660203016448',
    projectId: 'gradus-1eb02',
    authDomain: 'gradus-1eb02.firebaseapp.com',
    storageBucket: 'gradus-1eb02.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBsrzJDuy_fJchX7Hm-9Y2_GXxX_rx4PM',
    appId: '1:660203016448:android:489c396b37c99440b7a3e5',
    messagingSenderId: '660203016448',
    projectId: 'gradus-1eb02',
    storageBucket: 'gradus-1eb02.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBrRah6I_YBfsaTm7GGuin1MFTtvVDpOqo',
    appId: '1:660203016448:ios:603fde8505a5ef18b7a3e5',
    messagingSenderId: '660203016448',
    projectId: 'gradus-1eb02',
    storageBucket: 'gradus-1eb02.appspot.com',
    iosBundleId: 'com.example.gradus',
  );
}
