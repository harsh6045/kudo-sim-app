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
    /*if (kIsWeb) {
      return web;
    }*/
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
    /*case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;*/
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

  /*static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB58JAMjBzp5SCBOtkg5xAyQW31o9zXO90',
    appId: '1:760662597485:web:4e074b080c9f9bf6f4c464',
    messagingSenderId: '760662597485',
    projectId: 'sdp-2-dc684',
    authDomain: 'sdp-2-dc684.firebaseapp.com',
    storageBucket: 'sdp-2-dc684.appspot.com',
  );*/

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTucUU_N_bbikGwVAn9xL0Yrfqh2A0WAE ',
    appId: '1:385414826377:android:e381723e360ab75af73958',
    messagingSenderId: '760662597485',
    projectId: 'kudosim-89e57',
    storageBucket: 'sdp-2-dc684.appspot.com',
  );

/*static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLNOqStAJ0zx6YYjm6zpGnaWCpGByARQ4',
    appId: '1:760662597485:ios:f7f615cb0e82f189f4c464',
    messagingSenderId: '760662597485',
    projectId: 'sdp-2-dc684',
    storageBucket: 'sdp-2-dc684.appspot.com',
    iosClientId: '760662597485-j014f4m6itull6q0i8koj7ueggp4p6l0.apps.googleusercontent.com',
    iosBundleId: 'com.example.sdp2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBLNOqStAJ0zx6YYjm6zpGnaWCpGByARQ4',
    appId: '1:760662597485:ios:f7f615cb0e82f189f4c464',
    messagingSenderId: '760662597485',
    projectId: 'sdp-2-dc684',
    storageBucket: 'sdp-2-dc684.appspot.com',
    iosClientId: '760662597485-j014f4m6itull6q0i8koj7ueggp4p6l0.apps.googleusercontent.com',
    iosBundleId: 'com.example.sdp2',
  );*/
}
