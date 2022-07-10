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
    apiKey: 'AIzaSyDnqou_LZYNUrH3PEmdELofoRGlYAqCqg4',
    appId: '1:660550132391:web:b538599e89f1bf79def182',
    messagingSenderId: '660550132391',
    projectId: 'appenfermeria-d612d',
    authDomain: 'appenfermeria-d612d.firebaseapp.com',
    storageBucket: 'appenfermeria-d612d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBpDYqmFc5zq_2eSHbp4vSaOLN2Ej38r_A',
    appId: '1:660550132391:android:2985337ece5c163adef182',
    messagingSenderId: '660550132391',
    projectId: 'appenfermeria-d612d',
    storageBucket: 'appenfermeria-d612d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSAl0jAKcK1sFoqcBBcvgQiM8N2z8Q814',
    appId: '1:660550132391:ios:77bc2ed3ecf65bbcdef182',
    messagingSenderId: '660550132391',
    projectId: 'appenfermeria-d612d',
    storageBucket: 'appenfermeria-d612d.appspot.com',
    iosClientId: '660550132391-b5q56fapslc2p5kbg417ka1cghi886g8.apps.googleusercontent.com',
    iosBundleId: 'com.example.enfermeriaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSAl0jAKcK1sFoqcBBcvgQiM8N2z8Q814',
    appId: '1:660550132391:ios:77bc2ed3ecf65bbcdef182',
    messagingSenderId: '660550132391',
    projectId: 'appenfermeria-d612d',
    storageBucket: 'appenfermeria-d612d.appspot.com',
    iosClientId: '660550132391-b5q56fapslc2p5kbg417ka1cghi886g8.apps.googleusercontent.com',
    iosBundleId: 'com.example.enfermeriaApp',
  );
}