import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'newRegistration.dart';

class WelcomeScreen extends StatefulWidget{
  static const String id='welcome_screen';
  @override
  _WelcomeScreenState createState()=>_WelcomeScreenState();
}


class _WelcomeScreenState extends State<WelcomeScreen>{
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/humansphoto.jpg'),
            ),
            Text(
              'HRM',
              style: TextStyle(
                fontFamily: 'Cinzel',
                fontSize: 40.0,
                color: Colors.black87,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.black,
                )),
            Card(
                color: Colors.black12,
                margin:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: RaisedButton(
                  color: Colors.green,
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      size: 40.0,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Log In',
                      style: TextStyle(
                        fontFamily: 'Cenzil',
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, Login.id);
                  },
                )),
            SizedBox(
              height: 8.0,
            ),
            Card(
                color: Colors.teal,
                margin:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: RaisedButton(
                  color:Colors.yellow,
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      size: 40.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Cenzil',
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, NewRegistration.id);
                  },
                )),


          ],
        ),
      ),
    );
  }
}