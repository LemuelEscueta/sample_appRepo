// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Screens/Authenticate/Authenticate.dart';
import 'package:sample_app/Screens/Authenticate/RegisterPage.dart';
import 'package:sample_app/Screens/Home/Home.dart';
import 'package:sample_app/Screens/Wrapper.dart';
import 'package:sample_app/Services/Auth.dart';
import 'package:sample_app/Services/User.dart';

import 'Screens/Authenticate/SignInPage.dart';
import 'Services/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return StreamProvider<TheUser>.value(
      catchError: (_,__) => null,
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'LoginPage',
        routes: {
          'Home': (context) => Home(),
          'LoginPage': (context) => LoginPage(),
          'Wrapper': (context) => Wrapper(),
          'RegisterPage': (context) => RegisterPage(),
          'SignInPage': (context) => SignInPage(),
          'Authenticate': (context) => Authenticate(),
        },
      ),
    );
  }
}



