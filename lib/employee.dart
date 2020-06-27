import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'newRegistration.dart';

class Employee extends StatefulWidget{
  static const String id='employee';
  @override
  _EmployeeState createState()=>_EmployeeState();
}


class _EmployeeState extends State<Employee>{
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title:Text('Employee',
          style: TextStyle(
            fontFamily: 'Cenzil',
            fontSize: 25.0,
            color: Colors.white,
            fontWeight:FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
                color: Colors.white,
                margin:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: ListTile(
                  leading: Icon(
                    Icons.check_circle,
                    size: 40.0,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Select your fields',
                    style: TextStyle(
                      fontFamily: 'Cenzil',
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      color: Colors.black,
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(1.0),
                  color: Colors.amber[600],
                  width:120.0,
                  height: 120.0,),
                Container(
                  margin: const EdgeInsets.all(1.0),
                  color: Colors.red,
                  width: 120.0,
                  height: 120.0,),
                Container(
                  margin: const EdgeInsets.all(1.0),
                  color: Colors.pink,
                  width:120.0,
                  height: 120.0,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    onPressed:(){ print('electrcian is pressed');},
                    child: Text(
                      "Electrican Button",
                      style: TextStyle(fontSize: 20.0),
                    ),
                ),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  onPressed:(){ print('mason is pressed');},
                  child: Text(
                    "mason Button",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                              ],
            ),

          ],
        ),
      ),
    );
  }
}