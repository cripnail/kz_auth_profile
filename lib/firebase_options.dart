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
    apiKey: 'AIzaSyAOWX2ep45629eN869ogDpXNvTdLOQVXa4',
    appId: '1:813240090615:web:e178d50ea9894033d278f2',
    messagingSenderId: '813240090615',
    projectId: 'kz-auth-8c87d',
    authDomain: 'kz-auth-8c87d.firebaseapp.com',
    storageBucket: 'kz-auth-8c87d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB3F37anbfi-hgs1I4y1htj4Wc5mqFIC-I',
    appId: '1:813240090615:android:83bb2bf00bb0ce4ed278f2',
    messagingSenderId: '813240090615',
    projectId: 'kz-auth-8c87d',
    storageBucket: 'kz-auth-8c87d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADWaRFfeC29lSla8oaA64S2mkPelZbRJM',
    appId: '1:813240090615:ios:ce49780ad0dd0589d278f2',
    messagingSenderId: '813240090615',
    projectId: 'kz-auth-8c87d',
    storageBucket: 'kz-auth-8c87d.appspot.com',
    iosClientId: '813240090615-b8dtldib4p28ccm4ra32jechr4m3tkpj.apps.googleusercontent.com',
    iosBundleId: 'com.example.kzAuthProfile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADWaRFfeC29lSla8oaA64S2mkPelZbRJM',
    appId: '1:813240090615:ios:c23d992680cf10d6d278f2',
    messagingSenderId: '813240090615',
    projectId: 'kz-auth-8c87d',
    storageBucket: 'kz-auth-8c87d.appspot.com',
    iosClientId: '813240090615-klrdu8912eh18jhq6i6kj13lc5ppu4ii.apps.googleusercontent.com',
    iosBundleId: 'com.example.kzAuthProfile.RunnerTests',
  );
}
