import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screens/InputWrapper.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.android_rounded,
              size: 100.0,
              color: Colors.green[900],
            ),
            Text(
                'Android Studio',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),

            ),
            Text(
              'Login Page',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 60.0),
            InputWrapper()
          ],
        ),
        heightFactor: 5.0,

      ),
      backgroundColor: Colors.lightGreenAccent[100],
    );
  }
}