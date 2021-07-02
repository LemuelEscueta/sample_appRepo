import 'package:firebase_auth/firebase_auth.dart' show AuthResult, FirebaseAuth, FirebaseUser;
import 'package:sample_app/User.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUse(FirebaseUser user){
    return User (uid: user.uid);
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUse);
  }

  //sign in Anon
  Future signInAnon() async {
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUse(user);
    } catch(e){
      print((e).toString());
      return null;
    }
  }

  //sign in with email & pass

  //register with email & pass

  //sign out
  Future signOut() async{

    try{
      return await _auth.signOut();
    } catch(e){
      print(e.toString());
      return null;
    }
  }
}