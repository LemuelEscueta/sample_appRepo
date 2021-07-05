import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Screens/Authenticate/Authenticate.dart';
import 'package:sample_app/Screens/Home/Home.dart';
import 'package:sample_app/User.dart';

class Wrapper extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    final user = Provider.of<TheUser>(context);

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