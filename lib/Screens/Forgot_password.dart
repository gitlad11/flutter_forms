import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Sign_in.dart';

import '../color_theme.dart';

class ForgotPasswordState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ForgotPassword();
  }
}

class ForgotPassword extends State<ForgotPasswordState>{
  String _email;
  String _code;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30),
                  Text("Подтвердите что это вы", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(height: 50),
                  TextFormField(
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Это поле обязательное';
                      }
                      if(!RegExp( r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?").hasMatch(value)){
                        return "Неправильный Email адресс";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Colors.white),
                      labelText: "Email адресс",
                      helperText: "Адресс эл. почты для подтверждения",
                      labelStyle: TextStyle(fontSize: 14, color: Colors.grey.shade300, fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.shade300)
                      ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Theme.of(context).accentColor)
                        )
                    )
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      height: 50,
                      child: FlatButton(
                        onPressed: (){
                          if(_formKey.currentState.validate()){
                            return;
                          }
                        },
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xffff5f6d),
                                Color(0xffff5f6d),
                                Color(0xffffc371),
                              ],
                            ),
                          ),
                          child: Container(
                              alignment: Alignment.center,
                              constraints: BoxConstraints(minHeight: 50, maxWidth: double.infinity),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.assignment_turned_in, color : Colors.white),
                                  Text(" Продолжить", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center)
                                ],)

                          ),
                        ),
                      )
                  ),
                  SizedBox(height: 7),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 15),
                    child: FlatButton(
                        onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreenState()));},
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.cancel, color: Colors.white),
                        Text(" Отмена", style: TextStyle( color: Colors.white, fontSize: 18 ,fontWeight: FontWeight.bold)),
                                ]
                    )
                    ),
                  )
                ],
              )]
            ),
          )
          )
        ),
      );
  }
}