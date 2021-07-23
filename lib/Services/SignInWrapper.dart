import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/Auth.dart';

class SignInWrapper extends StatefulWidget {

  final _formKey = GlobalKey<FormState>();

  final AuthService _auth = AuthService();

  String email = '';
  String password = '';
  String error = '';
  dynamic result;

  bool loading = false;

  Future<bool> onPressedSignIn() async {
    if(_formKey.currentState!.validate()){
      result = await _auth.signInWithEmailAndPassword(email, password);
      return true;
    }
    else return false;
  }

  @override
  State<SignInWrapper> createState() => _SignInWrapperState();
}

class _SignInWrapperState extends State<SignInWrapper> {

  late final Function toggleView;

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
                widget.email = val;
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
                widget.password = val;
              },
            ),
          ),
        ],
      ),
    );
  }
}