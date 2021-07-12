import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Screens/Authenticate/Authenticate.dart';
import 'package:sample_app/Screens/Home/Home.dart';
import 'package:sample_app/Services/User.dart';

class Wrapper extends StatefulWidget{

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context){

    final user;
    user = Provider.of<TheUser>(context);

    if(user == null){
      print('Logged out');
      return Authenticate();
    }
    else {
      print('Logged in');
      return Home();
    }

  }
}