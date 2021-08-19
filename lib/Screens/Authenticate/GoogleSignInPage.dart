import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Screens/Home/Home.dart';
import 'package:sample_app/Services/GoogleSignInProvider.dart';
import 'package:sample_app/Services/GoogleSignInWidget.dart';

class GoogleSignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.onAuthStateChanged,
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);

              if(snapshot.hasData){
                return Home();
              }
              else{
                return GoogleSignInWidget();
              }
            }
          ),
        )
    );
  }
}
