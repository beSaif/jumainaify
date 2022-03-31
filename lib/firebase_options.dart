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
    apiKey: 'AIzaSyCiTUvrtIJgwwKyeU0FAC9H3VTGwPMqxU8',
    appId: '1:395900254588:web:3e748353fecf2b95ca0cf9',
    messagingSenderId: '395900254588',
    projectId: 'jumainaify',
    authDomain: 'jumainaify.firebaseapp.com',
    storageBucket: 'jumainaify.appspot.com',
    measurementId: 'G-B4S0RPWEMD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCk9UC3vRcijL2IhEss9fCC2bHF8SPDmKk',
    appId: '1:395900254588:android:b6d1b5a7a09e3fb6ca0cf9',
    messagingSenderId: '395900254588',
    projectId: 'jumainaify',
    storageBucket: 'jumainaify.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcDF3OK-NlEYbpFeClP0PHxaC1P7vTV8M',
    appId: '1:395900254588:ios:a4338471ca963d06ca0cf9',
    messagingSenderId: '395900254588',
    projectId: 'jumainaify',
    storageBucket: 'jumainaify.appspot.com',
    iosClientId: '395900254588-sdtc1tditjvot4fvvvsj9i1en4qkmm87.apps.googleusercontent.com',
    iosBundleId: 'no',
  );
}