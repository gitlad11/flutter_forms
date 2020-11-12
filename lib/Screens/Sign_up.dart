import 'dart:async';

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import 'package:flutter_app/Screens/Sign_in.dart';

class RegisterScreenState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterScreen();
  }
}

class RegisterScreen extends State<RegisterScreenState>{
  String _name;
  String _email;
  String _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child : Form(
          key: _formKey,
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Text("Создать профиль", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text("присоединяйся сейчас!", style: TextStyle(fontSize: 20, color: Colors.grey.shade300),)
                ],
              ),
              Column(children: <Widget>[
                TextFormField(
                  maxLength: 25,
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Имя обязательно';
                    }
                    return null;
                  },
                    onSaved: (String value){
                      _name = value;
                    },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.face, color: Colors.white),
                    labelText: "Имя",
                    helperText: "Ваше имя",
                    labelStyle: TextStyle(fontSize: 14, color: Colors.grey.shade300, fontWeight: FontWeight.w600),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  )
                ),
                SizedBox(height: 12),
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
                    onSaved: (String value){
                      _email = value;
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
                        borderSide: BorderSide(color: Colors.purple)
                  ),
                )
                ),
                SizedBox(height: 12),
                TextFormField(
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Поле обязательное';
                      }
                      return null;
                    },
                    onSaved: (String value){
                      _password = value;
                    },
                    decoration : InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                  labelText: "Пароль",
                  labelStyle: TextStyle(fontSize: 14, color: Colors.grey.shade400, fontWeight: FontWeight.w600),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.purple),
                      ),
                    floatingLabelBehavior : FloatingLabelBehavior.auto
                    ),
                    obscureText: true),
                SizedBox(height: 30),
                Container(height: 50,
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
                                Text(" Присоедениться", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center)
                              ],)

                        ),
                      ),
                    )
                ),
        SizedBox(height: 14),
        Container(height: 50, width: double.infinity,
            child: FlatButton(onPressed: (){},
              padding: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius : BorderRadius.circular(6),
              ),
              child: Ink(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.indigo,
                          Colors.indigo,
                          Color(0xffff5f6d),
                        ]
                    )
                ),
                child : Container(  constraints: BoxConstraints(maxWidth: double.infinity,minHeight: 50),

                  child : Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network("https://4.bp.blogspot.com/-HwsTmAk0ZiQ/We1Qg0wlSxI/AAAAAAAAtYA/zerxp_qWC3gRSoQGTbmTv-ngJ5JL72E0gCK4BGAYYCw/s1600/g.png", height: 34, width: 30),
                        SizedBox(width: 10),
                        Text("Войти с Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold )),
                      ]),
                )
              )
            )
        ),
        SizedBox(height: 5),
            Padding(padding: EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Уже есть профиль?",style: TextStyle(fontWeight: FontWeight.bold)),
                        GestureDetector(
                          onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreenState()));},
                          child: Text("  Войти", style : TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.redAccent)),
                        )
                      ],
                    ),)
              ],)
            ],
          )
        ),
      )
      )
    );
  }
}