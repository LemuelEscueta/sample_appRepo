import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: (){
        print('Logged in...');
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
    );
  }
}