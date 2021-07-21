import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Buttons/LoginButton.dart';
import 'package:sample_app/Buttons/SignInAnonButton.dart';
import 'package:sample_app/Buttons/SignUpButton.dart';
import '../../Services/InputField.dart';

class LoginPage extends StatefulWidget{


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context){

    InputField inputField;

    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
          Column(
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
              Padding(
                padding: EdgeInsets.all((30.0)),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: inputField = InputField(),
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10,),
                    LoginButton(pressedLogin: (){}, inputField: inputField),
                    SizedBox(height: 10,),
                    SignUpButton(),
                    SizedBox(height: 10,),
                    SignInAnonButton(),
                  ],
                ),
              ),
            ],
          ),
          ],
        ),
        heightFactor: 5.0,
      ),
      backgroundColor: Colors.lightGreenAccent[100],
    );
  }
}