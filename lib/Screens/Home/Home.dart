import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Buttons/SignOutButton.dart';

// class Home extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green[800],
//         title: Text('Home',
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       backgroundColor: Colors.green[100],
//       body: Row(
//         children: [
//           Column(
//             children: <Widget>[
//               SignOutButton(),
//             ],
//             crossAxisAlignment: CrossAxisAlignment.end,
//             mainAxisAlignment: MainAxisAlignment.center,
//           ),
//         ],
//         mainAxisAlignment: MainAxisAlignment.center,
//       ),
//     );
//   }
// }

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

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
      ),
      backgroundColor: Colors.green[100],
      body: Row(
        children: [
          Column(
            children: <Widget>[
              SignOutButton(),
            ],
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,

          ),

        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),

    );
  }
}

