import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/Auth.dart';
import 'package:sample_app/Services/RegisterWrapper.dart';
import 'package:sample_app/Services/SignInWrapper.dart';

class SignInButton extends StatefulWidget{
  final VoidCallback pressedSignIn;
  final SignInWrapper signInWrapper;

  SignInButton({ required this.pressedSignIn, required this.signInWrapper});

  @override
  State<SignInButton> createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            if(await widget.signInWrapper.OnPressedSignIn()){
              pressedRegister:
              if(widget.signInWrapper.result == null){
                setState(() => widget.signInWrapper.error = 'Could not sign in with those credentials');
              }
              else {
                setState(() => widget.signInWrapper.error = '');
                Navigator.pushReplacementNamed(context, 'Home');
              }
            }
          },

          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          widget.signInWrapper.error,
          style: TextStyle(
            color: Colors.red,
            fontSize: 15.0,
          ),
        )

      ],
    );
  }
}