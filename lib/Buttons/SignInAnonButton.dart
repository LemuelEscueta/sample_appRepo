import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/Auth.dart';

class SignInAnonButton extends StatelessWidget{

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: () async {
        dynamic result = await _auth.signInAnon();
        // Navigator.popAndPushNamed(context, 'Home');
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          'Sign in as Guest',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}