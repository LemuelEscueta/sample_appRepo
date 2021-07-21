import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddContact extends  StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Name* ',
              ),
              
            ),
          ),

        ],
      ),
    );
  }
}