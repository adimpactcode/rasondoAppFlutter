import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCv3Futb2e1htmM6AszcnlcRYjHoEANLGw",
            authDomain: "rasondo-v3-wpjwei.firebaseapp.com",
            projectId: "rasondo-v3-wpjwei",
            storageBucket: "rasondo-v3-wpjwei.appspot.com",
            messagingSenderId: "725243170629",
            appId: "1:725243170629:web:3b8e064435c61176a8782c"));
  } else {
    await Firebase.initializeApp();
  }
}
