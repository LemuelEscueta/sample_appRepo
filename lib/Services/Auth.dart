import 'package:firebase_auth/firebase_auth.dart' show AuthResult, FirebaseAuth, FirebaseUser;
import 'package:sample_app/Services/User.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  TheUser _userFromFirebaseUse(FirebaseUser user){
    return TheUser (uid: user.uid);
  }

  Stream<TheUser> get user {
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
  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUse(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //register with email & pass
  Future registerWithEmailAndPassword(String email, String password) async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUse(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

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