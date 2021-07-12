import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Screens/Authenticate/RegisterPage.dart';
import 'package:sample_app/Screens/Authenticate/SignInPage.dart';

class Authenticate extends StatefulWidget {

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;

  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      print(showSignIn);
      return SignInPage(toggleViewParam: toggleView);
    }
    else{
      print(showSignIn);
      return RegisterPage(toggleViewParam: toggleView);
    }
  }
}
