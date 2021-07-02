import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Buttons/SignInAnonButton.dart';

import '../InputField.dart';
import '../Buttons/LoginButton.dart';

class InputWrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all((30.0)),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
               child: InputField(),
            ),
            SizedBox(height: 20.0,),
            Text(
              'Forgot Password',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10,),
            LoginButton(),
            SizedBox(height: 10,),
            SignInAnonButton(),
          ],
        ),
    );
  }
}