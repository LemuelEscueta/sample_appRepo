// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Screens/Wrapper.dart';
import 'package:sample_app/Services/Auth.dart';
import 'package:sample_app/User.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return StreamProvider<User>.value(
      value: AuthService().user,
      initialData: null,
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}



