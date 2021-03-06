import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Services/GoogleSignInProvider.dart';

class GoogleSignInButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(4),
      child: OutlineButton.icon(
        onPressed: (){
          final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.login();
        },
        label: Text(
            'Sign In With Google',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10),
          ),
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        highlightedBorderColor: Colors.black,
        borderSide: BorderSide(color: Colors.black),
        textColor: Colors.black,
        icon: FaIcon(FontAwesomeIcons.google, color: Colors.red,),
      ),
    );
  }
}