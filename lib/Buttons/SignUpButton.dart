import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  SignUpButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: () async {
        Navigator.pushReplacementNamed(context, 'Authenticate');
      },

      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          'Sign up',
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