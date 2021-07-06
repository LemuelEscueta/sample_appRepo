import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/Auth.dart';

class RegisterButton extends StatelessWidget{
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: () async {
       // await _auth.signOut();
        Navigator.pushReplacementNamed(context, 'LoginPage');
      },

      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          'Register',
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