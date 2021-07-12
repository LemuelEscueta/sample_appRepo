import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/InputField.dart';
import 'package:sample_app/Services/LoginPage.dart';

class LoginButton extends StatefulWidget{
  final VoidCallback pressedLogin;
  final InputField inputField;

  LoginButton({ required this.pressedLogin, required this.inputField});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ElevatedButton(
          onPressed: ()async {
            if(await widget.inputField.OnPressedLogin()){
              pressedLogin:
              if(widget.inputField.result == null){
                setState(() => widget.inputField.error = 'Incorrect credentials');
              }
              else{
                setState(() => widget.inputField.error = '');
                Navigator.pushReplacementNamed(context, 'Home');
              }
            }
            else {
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          widget.inputField.error,
          style: TextStyle(
            color: Colors.red,
            fontSize: 15.0,
          ),
        )
      ],
    );
  }
}