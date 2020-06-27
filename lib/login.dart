import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/painting.dart';

class Login extends StatefulWidget{
  static const String id='login_screen';
  @override
  _LoginState createState()=>_LoginState();
}

class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context ) {

    return Scaffold(

      backgroundColor: Colors.teal.shade100,
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
                  color: Colors.black26,
                )),
            TextField(
              onChanged: (value){
              },
              decoration:InputDecoration(
                icon:Icon(Icons.account_circle,
                    size: 40.0,
                    color: Colors.black),
                hintText:'Email ID',
                contentPadding: EdgeInsets.symmetric(vertical:10,horizontal:10),

                border:OutlineInputBorder(

                  borderRadius: BorderRadius.all(Radius.circular(32),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.black,width: 1),
                  borderRadius:BorderRadius.all(Radius.circular(32),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.black,width:2),
                  borderRadius: BorderRadius.all(Radius.circular(32),),),
              ),
            ),
            SizedBox(
              height: 10
            ),
            TextField(
              onChanged: (value){
              },
              decoration:InputDecoration(
                icon:Icon(Icons.call,
                    size: 40.0,
                    color: Colors.black),
                hintText:'Phone number',
                contentPadding: EdgeInsets.symmetric(vertical:10,horizontal: 10),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.black,width: 1),
                  borderRadius:BorderRadius.all(Radius.circular(32),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.black,width:2),
                  borderRadius: BorderRadius.all(Radius.circular(32),),),
              ),
            ),
            SizedBox(
              height: 20
            ),
            Card(
                color: Colors.green,
                margin:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: RaisedButton(
                  color:Colors.green,
                  child: ListTile(
                    leading: Icon(
                      Icons.done,
                      size: 40.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: 'Cenzil',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                )),
          ],
        ),
      ),
    );
  }
}

