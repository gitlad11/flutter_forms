import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Sign_in.dart';
import 'package:flutter_app/Screens/Sign_up.dart';
import 'package:flutter_app/Screens/Forgot_password.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "langtinki",
      theme: ThemeData( brightness: Brightness.dark,
                        primaryColor: Colors.blueAccent,
                        accentColor: Colors.purpleAccent[200],
                        fontFamily: 'Georgia',
                        textTheme: TextTheme(
                            headline1 : TextStyle(fontSize: 70.0, fontWeight:FontWeight.bold ),
                            headline6 : TextStyle(fontSize : 30.0, fontStyle: FontStyle.italic),
                            bodyText1 : TextStyle(fontSize: 14.0, fontFamily : 'Raleway')
                        )),
      home: RegisterScreenState()
    );
  }
}