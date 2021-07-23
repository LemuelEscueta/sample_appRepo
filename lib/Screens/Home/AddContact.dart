
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Services/Database.dart';

class AddContact extends  StatelessWidget {
  DatabaseService user = DatabaseService(uid: DatabaseService().uid);

  String name = '';
  String contact = '';
  String address = '';

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
          child: TextFormField(
            validator: (val) => val!.isEmpty ? 'Name' : null,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
                borderSide: BorderSide(width: 100.0,
                    style: BorderStyle.solid),),
              fillColor: Colors.grey,
              icon: Icon(Icons.person), labelText: 'Name* ',
            ),
            onChanged: (val) {
              name = val;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
                borderSide: BorderSide(width: 100.0,
                    style: BorderStyle.solid),),
              fillColor: Colors.grey, icon:
            Icon(Icons.phone),
              labelText: 'Contact No* ',
            ),
            onChanged: (val) {
              contact = val;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
                borderSide: BorderSide(width: 100.0,
                    style: BorderStyle.solid),),
              fillColor: Colors.grey,
              icon: Icon(Icons.home),
              labelText: 'Address* ',
            ),
            onChanged: (val) {
              address = val;
            },
          ),
        ),
        SizedBox(height: 10.0,),
        Row(
          children: <Widget>[
            SizedBox(width: 300.0,),
            ElevatedButton(onPressed: (){
              user.updateUserData(name, contact, address);
              },
                child: Text('Save')),
          ],
        )
      ],
    );
  }
}