
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'newRegistration.dart';

class Employer extends StatefulWidget{
  static const String id='employer';
  @override
  _EmployerState createState()=>_EmployerState();
}


class _EmployerState extends State<Employer>{
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('hello employer'),
          ],
        ),
      ),
    );
  }
}