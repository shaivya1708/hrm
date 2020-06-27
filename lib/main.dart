import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:hrm/login.dart';
import 'package:hrm/newRegistration.dart';
import 'package:hrm/welcomeScreen.dart';
import 'employee.dart';
import 'employer.dart';


void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context ) {
    return MaterialApp(
      theme:ThemeData.dark(),
       initialRoute: WelcomeScreen.id,
        routes:{
          WelcomeScreen.id:(context)=>WelcomeScreen(),
          Login.id:(context)=>Login(),
          NewRegistration.id:(context)=>NewRegistration(),
          Employee.id:(context)=>Employee(),
          Employer.id:(context)=>Employer(),

        }

    );

  }
}
