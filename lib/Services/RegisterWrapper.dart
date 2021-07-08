import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/Auth.dart';

class RegisterWrapper extends StatefulWidget {

  final AuthService _auth = AuthService();

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';
  dynamic result;

  Future<void> OnPressedRegister() async {
    if(_formKey.currentState!.validate()){
      result = await _auth.registerWithEmailAndPassword(email, password);
    }
  }

  @override
  State<RegisterWrapper> createState() => _RegisterWrapperState();
}

class _RegisterWrapperState extends State<RegisterWrapper> {


  @override
  Widget build(BuildContext context){
    return Form(
      key: this.widget._formKey,
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
                setState(() => this.widget.email = val);
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
              validator: (val) => val!.length < 6 ? 'Enter a password minimum of 6 characters' : null,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
              obscureText: true,
              onChanged: (val) {
                setState(() => this.widget.password = val);
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> OnPressedRegisterSetState() async{
    setState(()=> this.widget.error = 'please supply with valid email');
    print('Not registered correctly');
  }
}