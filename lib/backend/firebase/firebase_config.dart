import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA5Q_4SsW7XBhL_gEUFkmm5HOlKhdkziaU",
            authDomain: "finalyearproject-cbfe5.firebaseapp.com",
            projectId: "finalyearproject-cbfe5",
            storageBucket: "finalyearproject-cbfe5.appspot.com",
            messagingSenderId: "948630052599",
            appId: "1:948630052599:web:6bcae93ed6246bf0ccfdf2",
            measurementId: "G-H0RW74D088"));
  } else {
    await Firebase.initializeApp();
  }
}
