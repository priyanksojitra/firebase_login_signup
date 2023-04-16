import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authservice {
// Google sign in

 static Future signInWithGoogle() async {

    // begin Interective sign process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // obtain auth detail from request

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

// create new credential for user

    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

   //sign in anonymous


    // finally let's sign in

    return await FirebaseAuth.instance.signInWithCredential(credential);

  }
}
