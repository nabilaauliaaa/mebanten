import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'Web platform is not supported',
      );
    }
    
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for ${defaultTargetPlatform.toString()}.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDZkysGNSA6adZHQsKw0hY2uEgpcBRXHg',
    appId: '1:828382308592:android:41d1b34b49c1d8898a7a35',
    messagingSenderId: '828382308592',
    projectId: 'flutter-1f100',
    storageBucket: 'flutter-1f100.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'YOUR_IOS_API_KEY_HERE', // Akan diisi nanti jika ada iOS
    appId: 'YOUR_IOS_APP_ID_HERE',
    messagingSenderId: '828382308592',
    projectId: 'flutter-1f100',
    storageBucket: 'flutter-1f100.firebasestorage.app',
    iosClientId: 'YOUR_IOS_CLIENT_ID',
    iosBundleId: 'com.example.bantenBali',
  );
}