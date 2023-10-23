import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FirebaseFacebook{

   static Future<UserCredential> signInWithFacebook() async {
  
  final LoginResult loginResult = await FacebookAuth.instance.login(
    permissions: [
      'email', 'public_profile', 'user_birthday'
    ]
  );

  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
}
  
   
}