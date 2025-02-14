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
    apiKey: 'AIzaSyBPg9HCKJ9URlA_lVHujClIMvm2_H1qTzE',
    appId: '1:781116905532:web:1661ee697f6a97dc4b0b39',
    messagingSenderId: '781116905532',
    projectId: 'chat-app-e4c14',
    authDomain: 'chat-app-e4c14.firebaseapp.com',
    storageBucket: 'chat-app-e4c14.firebasestorage.app',
    measurementId: 'G-SGT3PXJ98V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBG4tG9IvxNbxqdMlk-GNkshzn-bR5VrAk',
    appId: '1:781116905532:android:1f7d04cd32f985b84b0b39',
    messagingSenderId: '781116905532',
    projectId: 'chat-app-e4c14',
    storageBucket: 'chat-app-e4c14.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBd7IiG3Oizv0jA0e212oUeBgrtkXapjYo',
    appId: '1:781116905532:ios:1bd5778dfd418ff94b0b39',
    messagingSenderId: '781116905532',
    projectId: 'chat-app-e4c14',
    storageBucket: 'chat-app-e4c14.firebasestorage.app',
    iosBundleId: 'com.example.flutterChatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBd7IiG3Oizv0jA0e212oUeBgrtkXapjYo',
    appId: '1:781116905532:ios:1bd5778dfd418ff94b0b39',
    messagingSenderId: '781116905532',
    projectId: 'chat-app-e4c14',
    storageBucket: 'chat-app-e4c14.firebasestorage.app',
    iosBundleId: 'com.example.flutterChatapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBPg9HCKJ9URlA_lVHujClIMvm2_H1qTzE',
    appId: '1:781116905532:web:bf804fe670b536454b0b39',
    messagingSenderId: '781116905532',
    projectId: 'chat-app-e4c14',
    authDomain: 'chat-app-e4c14.firebaseapp.com',
    storageBucket: 'chat-app-e4c14.firebasestorage.app',
    measurementId: 'G-69DNDJ4SC1',
  );
}
