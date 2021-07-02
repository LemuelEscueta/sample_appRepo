import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Screens/Authenticate/Authenticate.dart';
import 'package:sample_app/Screens/Home/Home.dart';
import 'package:sample_app/User.dart';

class Wrapper extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    final dynamic user = Provider.of<User>(context);

    if(user == null){
      return Authenticate();
    }
    else {
      return Home();
    }
  }
}