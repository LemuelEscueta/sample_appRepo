import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Buttons/GoogleSignInButton.dart';

class GoogleSignInWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Spacer(),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 175,
            child: Text(
              'Google',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Spacer(),
        GoogleSignInButton(),
        SizedBox(height: 12),
      ],
    );
  }
}