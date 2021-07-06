import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Buttons/LoginButton.dart';
import 'package:sample_app/Services/SignInWrapper.dart';

class SignInPage extends StatefulWidget {

  late final Function toggleView;

  SignInPage({required void Function() toggleViewParam})
  {
    this.toggleView = toggleViewParam;
  }

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('Sign In',
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
              label: Text('Register'))
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
              child: SignInWrapper(),
            ),
            SizedBox(height: 10.0),
            LoginButton(),
          ],
        ),
      ),
    );

  }
}