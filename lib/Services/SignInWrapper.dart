import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/Auth.dart';

class SignInWrapper extends StatefulWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  State<SignInWrapper> createState() => _SignInWrapperState();
}

class _SignInWrapperState extends State<SignInWrapper> {
  final AuthService _auth = AuthService();

  late final Function toggleView;

  SignIn(Function toggleViewParam)
  {
    this.toggleView = toggleViewParam;
  }

  String email = '';

  String password = '';

  @override
  Widget build(BuildContext context){
    return Form(
      key: widget._formKey,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: Colors.grey.shade500
                  ),
                )
            ),
            child: TextFormField(
              validator: (val) => val!.isEmpty ? 'Enter an email' : null,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
              onChanged: (val) {
                email = val;
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade500,
                  ),
                )
            ),
            child: TextFormField(
              validator: (val) => val!.isEmpty ? 'Enter a password' : null,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
              obscureText: true,
              onChanged: (val) {
                password = val;
              },
            ),
          ),
        ],
      ),
    );
  }
}