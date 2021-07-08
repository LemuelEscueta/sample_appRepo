import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Buttons/RegisterButton.dart';
import 'package:sample_app/Services/RegisterWrapper.dart';

class RegisterPage extends StatefulWidget{
  late final Function toggleView;

  RegisterPage({required void Function() toggleViewParam})
  {
    this.toggleView = toggleViewParam;
  }

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  @override
  Widget build(BuildContext context) {

    RegisterWrapper _registerWrapper;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('Register',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: (){
                widget.toggleView();
              },
              icon: Icon(Icons.person),
              label: Text('Sign Up'))
        ],
      ),

      backgroundColor: Colors.green[100],
      body: Center(

        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30.0),
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10)),
              child: _registerWrapper = RegisterWrapper(),

            ),
            SizedBox(height: 10.0),
            RegisterButton(
              pressedRegister: (){},
              registerWrapper: _registerWrapper,
            ),
          ],
        ),
      ),
    );
  }
}