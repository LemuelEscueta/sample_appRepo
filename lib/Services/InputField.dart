import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Auth.dart';

class InputField extends StatefulWidget{

  final AuthService _auth = AuthService();

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';
  dynamic result;

  Future<bool> onPressedLogin() async {
    if(_formKey.currentState!.validate()){
      result = await _auth.signInWithEmailAndPassword(email, password);
      return true;
    }
    else return false;
  }

  //text field state
  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

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
                  color: Colors.grey.shade200
                ),
              )
            ),
            child: TextFormField(
              validator: (val) => val!.length < 6 ? 'Could not find any matching email' : null,
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
                      color: Colors.grey.shade200
                  ),
                )
            ),
            child: TextFormField(
              validator: (val) => val!.length < 6 ? 'Enter correct password' : null,
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