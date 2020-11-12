import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class ProfileScreenState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProfileScreen();
  }
}

class ProfileScreen extends State<ProfileScreenState>{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(left: 7, right: 7),
      child: Column(
        children: [
          SizedBox(height: 7),
          Container(
              height: 137,
              child:
              Row(
                  children: [Container(
                    padding: EdgeInsets.only(left : 10, top: 20),
                    child: Stack(
                      children: [
                        CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.brown.shade800,
                        child: Text('AH'),
                        ),
                        Container(
                            padding: EdgeInsets.only( top : 50, left: 50),
                            child: IconButton( onPressed: (){},
                                tooltip: 'Редактировать',
                                iconSize: 26, icon : Icon(Icons.mode_edit, color: Colors.black, size: 26)))
                      ]
                    ),
                  ),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Row(
                                children : [
                                      Text("Имя:", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16 )),
                                      Text(" " + "UserName", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),)
                            ]),
                            SizedBox(height: 7),
                            Row(
                                children: [
                                        Text("Email:", style: TextStyle(color : Colors.black54, fontWeight: FontWeight.bold, fontSize: 16)),
                                          Text(" " + "efimovi420@gmail.com",
                                              softWrap: false,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
                                ],
                              ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("онлайн" , style: TextStyle(color : Colors.black45, fontWeight: FontWeight.bold, fontSize: 15)),
                                IconButton(onPressed: (){}, iconSize: 28, icon : Icon(Icons.settings, color: Colors.black54))
                              ], )
                          ],
                        ),
                      ),
                    )
                  ]
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.5, 1.0),
                    blurRadius: 20.0,
                  ),
                ],
              )
          ),
          SizedBox(height: 10),

          Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Flexible( child: Column(children : [Text("Привет!", style: TextStyle(color: Colors.black)),
                                                      ]
                  ))
                ],
              ),
              padding: EdgeInsets.only(left: 7, right: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.5, 1.0),
                      blurRadius: 20.0,
                    ),
                  ],
                )
            ),
        ],
      ),
    );
  }
}