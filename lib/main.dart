import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/LoginPage.dart';
import 'package:sample_app/Screens/Authenticate/Authenticate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
    );
  }
}



