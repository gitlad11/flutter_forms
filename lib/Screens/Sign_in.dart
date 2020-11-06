import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Sign_up.dart';

import '../color_theme.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Container(
          padding : EdgeInsets.only(left: 14, right : 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text("Добро Пожаловать!" ,
                      style:  TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                      ),
                  SizedBox(height: 5),
                  Text("Войдите что бы продолжить",
                      style: TextStyle(fontSize: 20, color: Colors.grey.shade100)
                  )
                ],
              ),
              Column(children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.white),
                    labelText: "Email ",
                    helperText: "Адресс Эл. почты",
                    labelStyle: TextStyle(fontSize: 14, color: Colors.grey.shade300),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide : BorderSide( color : Colors.grey.shade300 )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color : Colors.lightBlueAccent)
                    )
                  )
                ),
               SizedBox(height: 12),

               TextField(
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.lock, color: Colors.white),
                   labelText: "Пароль",
                   helperText: "Ваш Пароль",
                   labelStyle: TextStyle(fontSize: 14, color: Colors.grey.shade300),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide(color: Colors.grey.shade300)
                   ),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(color : Colors.lightBlueAccent),

                 )
               )
               ),
                SizedBox(height: 12,),
                Align(alignment: Alignment.topRight,
                      child: Text("забыли пароль?", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                ),
                SizedBox(height: 30),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: FlatButton(
                    onPressed : (){},
                    padding: EdgeInsets.all(0),
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
                          ]
                        )
                      ),
                      child: Container( alignment: Alignment.center,
                                      constraints: BoxConstraints(maxWidth: double.infinity, minHeight: 50),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Icon(Icons.person_rounded, color : Colors.white),
                                                    Text("Вход", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center)
                                                    ],)
                    ),
                  ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
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
                                          Colors.indigoAccent,
                                          Colors.indigoAccent,
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
              ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Создать новый профиль", style: TextStyle(fontWeight: FontWeight.bold)),
                          GestureDetector(
                            onTap : (){  },
                            child: Text("  Регистрация", style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.redAccent)),
                          )
                        ],
                      ),)
            ],
          )
        )
      )
    );
  }
}