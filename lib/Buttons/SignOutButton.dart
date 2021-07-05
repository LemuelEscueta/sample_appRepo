import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/Auth.dart';

class SignOutButton extends StatelessWidget{

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: () async {
        await _auth.signOut();
        // Navigator.popAndPushNamed(context, 'Authenticate');
      },

      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          'Sign Out',
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