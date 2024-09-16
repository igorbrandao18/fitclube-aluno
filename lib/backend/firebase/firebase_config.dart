import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAMu6_GlGQts-gKSTc0n0MyANyD7UFFcsw",
            authDomain: "fit-clube-a-d-m-9hg8i5.firebaseapp.com",
            projectId: "fit-clube-a-d-m-9hg8i5",
            storageBucket: "fit-clube-a-d-m-9hg8i5.appspot.com",
            messagingSenderId: "608019917102",
            appId: "1:608019917102:web:83010a910432bc63ef32bf"));
  } else {
    await Firebase.initializeApp();
  }
}
