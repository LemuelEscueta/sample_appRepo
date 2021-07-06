import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/Auth.dart';

class RegisterWrapper extends StatelessWidget {
  final AuthService _auth = AuthService();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context){
    return Column(
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
    );
  }
}