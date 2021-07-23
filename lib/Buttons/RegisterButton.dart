import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/Auth.dart';
import 'package:sample_app/Services/RegisterWrapper.dart';

class RegisterButton extends StatefulWidget{
  final VoidCallback pressedRegister;
  final RegisterWrapper registerWrapper;

  RegisterButton({ required this.pressedRegister, required this.registerWrapper});

  @override
  State<RegisterButton> createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            if(await widget.registerWrapper.onPressedRegister()){
                pressedRegister:
                if(widget.registerWrapper.result == null){
                  setState(() => widget.registerWrapper.error = 'Please enter a valid email');
                }
                else{
                  setState(() => widget.registerWrapper.error = '');
                  Navigator.pushReplacementNamed(context, 'LoginPage');
                }
              }
            else {
            }
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
        ),
        SizedBox(height: 10.0),
        Text(
          widget.registerWrapper.error,
          style: TextStyle(
            color: Colors.red,
            fontSize: 15.0,
          ),
        )
      ],
    );
  }
}