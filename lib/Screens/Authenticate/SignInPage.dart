import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Buttons/SignInButton.dart';
import 'package:sample_app/Services/Loading.dart';
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

    SignInWrapper signInWrapper = SignInWrapper();

    return signInWrapper.loading ? Loading() : Scaffold(
      appBar: AppBar(
        leading: FlatButton.icon(
          onPressed: (){
            Navigator.pushReplacementNamed(context, 'LoginPage');
          },
          icon: Icon(Icons.home),
          label: Text('Home'),
        ),
        leadingWidth: 100,
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
      body: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(30.0),
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10)),
                  child: signInWrapper,
                ),
                SizedBox(height: 10.0),
                SignInButton(pressedSignIn: (){}, signInWrapper: signInWrapper),
              ],
            ),
          ),
        ],
      ),
    );

  }
}