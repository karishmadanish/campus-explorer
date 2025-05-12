import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDOKW_qhXs39FyZUnkZSfR-tW07vdC43xo",
            authDomain: "campus-explorer-33cfb.firebaseapp.com",
            projectId: "campus-explorer-33cfb",
            storageBucket: "campus-explorer-33cfb.appspot.com",
            messagingSenderId: "881802415403",
            appId: "1:881802415403:web:155d4a6e4c1503c036c96e"));
  } else {
    await Firebase.initializeApp();
  }
}
