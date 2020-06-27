import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'employee.dart';
import 'employer.dart';

class NewRegistration extends StatefulWidget {
  static const String id='new_registraion';
  @override
  _NewRegistration createState() => _NewRegistration();
}
class _NewRegistration extends State<NewRegistration>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:Text('Welcome to HRM',
          style: TextStyle(
            fontFamily: 'Cenzil',
            fontSize: 25.0,
            color: Colors.white,
            fontWeight:FontWeight.bold,
          ),
        ),
      ),
      body:SafeArea(
        child:Column(
          children:<Widget>[
            Card(
              color: Colors.white,
              margin:
              EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              child: Text(
                'Fill in your details',
                  style:TextStyle(
                    fontFamily:'Cinzel',
                    fontWeight:FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2,
                    color:Colors.black,
                  ),
              ),
            ),
            TextField(
              onChanged: (value){
              },
              decoration:InputDecoration(
                hintText:'Name',
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
                icon:Icon(Icons.account_circle,
                    size: 40.0,
                    color: Colors.black),
              ),
            ),
            SizedBox(
                height: 10
            ),
            TextField(
              onChanged: (value){
              },
              decoration:InputDecoration(
                icon:Icon(Icons.email,
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
                hintText:'Phone Number',
                errorText:'must be digits',
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
                icon:Icon(Icons.home,
                    size: 40.0,
                    color: Colors.black),
                hintText:'Address',
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
                icon:Icon(Icons.credit_card,
                    size: 40.0,
                    color: Colors.black),
                hintText:'Adhar Card Number',
                errorText:'Must be digits',
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
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: RaisedButton(

                color:Colors.lightBlueAccent,
                child:ListTile(
                  title:Text(
                    'Register as Employee',
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
                  Navigator.pushNamed(context,Employee.id);
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: RaisedButton(
                color:Colors.indigo,
                child:ListTile(
                  title:Text(
                    'Register as Employer',
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
                  Navigator.pushNamed(context, Employer.id);
                },
              ),
            ),

          ],

        ),
      ),
    );
  }
}

