
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Model/Contact.dart';
import 'package:sample_app/Model/User.dart';
import 'package:sample_app/Services/Auth.dart';
import 'package:sample_app/Screens/Home/ContactList.dart';
import 'package:sample_app/Services/Database.dart';
import 'package:provider/provider.dart';

import 'AddContact.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final AuthService _auth = AuthService();

  int _selectedIndex = 0;

  void _onItemTap(int index){
    setState(() => _selectedIndex = index);
  }

  List<Widget> _widgets = <Widget>[
    ContactList(),
    AddContact(),
  ];

  @override
  Widget build(BuildContext context) {

    return StreamProvider<List<Contact>?>.value(
      value: DatabaseService().contact,
      initialData: null,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[800],
          title: Text('Home',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
                Navigator.pushReplacementNamed(context, 'Authenticate');
              },
              icon: Icon(Icons.person),
              label: Text('Sign out'))
          ],
        ),
        backgroundColor: Colors.green[100],
        body: Center(
          child: _widgets.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const<BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.view_list),
                label: 'View List',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add Contact',
              ),
            ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}

