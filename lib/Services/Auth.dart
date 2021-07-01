import 'package:firebase_auth/firebase_auth.dart' show AuthResult, FirebaseAuth, FirebaseUser;

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in Anon
  Future signInAnon() async {
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    } catch(e){
      print((e).toString());
      return null;
    }
  }

  //sign in with email & pass

  //register with email & pass

  //sign out
}