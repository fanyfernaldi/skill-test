import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService with ChangeNotifier {
  var _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleAccount;

  signIn() async {
    this.googleAccount = await _googleSignIn.signIn();
    notifyListeners();
  }

  signOut() async {
    this.googleAccount = await _googleSignIn.signOut();
    notifyListeners();
  }
}
