import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_app/Screens/Settings_screen.dart';

class ProfileScreenState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProfileScreen();
  }
}

class ProfileScreen extends State<ProfileScreenState>{
  final List<String> Users = <String>["Romeo", "Julliet", "Ricardio", "Arhimed", "Washington", "Rihanna"];
  final List<String> Names = <String>["R", "J", "R", "A", "W", "R"];
  final List<int> Online = <int>[1, 0 , 0 , 1, 1, 0];

  @override
  Widget build(BuildContext context){
    return Container(
        height:  MediaQuery.of(context).size.height,
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
                          padding: EdgeInsets.only(top : 22, left: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Row(
                                  children : [
                                        Text("Имя:", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16 )),
                                        Text(" " + "UserName", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),)
                              ]),
                              SizedBox(height: 7),
                              Row(
                                  children: [
                                          Text("Email:", style: TextStyle(color : Colors.black54, fontWeight: FontWeight.bold, fontSize: 16)),
                                            Text(" " + "efimovi420@gmail.com",
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),),
                                  ],
                                ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Container(height: 13, width: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                        shape: BoxShape.circle
                                    )),
                                    SizedBox(width: 5),
                                    Text("В сети" , style: TextStyle(color : Colors.black54, fontWeight: FontWeight.bold, fontSize: 15))
                                  ]),
                                  IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));},
                                              iconSize: 28,
                                              icon : Icon(Icons.settings, color: Colors.black54))
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
                      color: Colors.black54,
                      offset: Offset(0.5, 1.0),
                      blurRadius: 10.0,
                    ),
                  ],
                )
            ),
            SizedBox(height: 10),

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                  height: 380,
                  padding: EdgeInsets.all( 10),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Flexible( fit : FlexFit.tight, child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                            children : [

                          Row( mainAxisAlignment: MainAxisAlignment.center,
                              children : [ Icon(Icons.assessment_rounded, color: Colors.black87, size: 26),
                                            SizedBox(width: 4),
                                          Text("Достижения", style: TextStyle( fontSize: 20, letterSpacing: 0.1, fontWeight: FontWeight.normal, color: Colors.black87))
                                          ]),
                          SizedBox(height: 4),
                              new CircularPercentIndicator(
                                radius: 180.0,
                                lineWidth: 10.0,
                                animation: true,
                                percent: 0.6,
                                center: new Text(
                                  "очков 342/500",
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0, color: Colors.black87),
                                ),
                                footer: new Text(
                                  "Уровень: 14",
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.black87),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: Theme.of(context).accentColor,
                              ),

                              Container(
                              width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(top: 20, left : 5, right: 5),
                            child: Column(
                              children: [Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row( children: [
                                    Text("Всего очков :",
                                        overflow: TextOverflow.fade,
                                        maxLines: 2,
                                        softWrap: false,
                                        style: TextStyle( fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black87 )),
                                    Text( " " + "1242", style: TextStyle(fontSize : 16, fontWeight: FontWeight.bold, color : Colors.black54 ))
                                  ]),
                                  Row( children: [
                                    Text( "Заданий сделано :",
                                        overflow: TextOverflow.fade,
                                        maxLines: 2,
                                        softWrap: false,
                                        style: TextStyle( fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black87 )),
                                    Text(" " + "5", style: TextStyle(fontSize : 16, fontWeight: FontWeight.bold, color : Colors.black54 ))
                                  ])
                                ],
                              ),
                                SizedBox(height: 20),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row( children: [
                                        Text("Переведенно слов :",
                                            overflow: TextOverflow.fade,
                                            maxLines: 2,
                                            softWrap: false,
                                            style: TextStyle( fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black87 )),
                                        Text( " " + "12",
                                            overflow: TextOverflow.fade,
                                            maxLines: 2,
                                            softWrap: false,
                                            style: TextStyle(fontSize : 18, fontWeight: FontWeight.bold, color : Colors.black54 ))
                                      ]),
                                    ],
                                  ),
                              ]
                            )
                          ),
                            SizedBox(height : 40),
                              Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children : [ Icon(Icons.people_alt_rounded, color: Colors.black87, size: 26),
                                              SizedBox(width: 4),
                                              Text("Друзья:", style: TextStyle( fontSize: 20, letterSpacing: 0.1, fontWeight: FontWeight.normal, color: Colors.black87)),
                                              SizedBox(width: 4),
                                              Text('${Users.length}', style : TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color : Colors.black54 ))
                                  ]),
                              SizedBox(height: 20),
                              Container(
                                height: 180,
                                color : Colors.blueGrey[200],
                                child:  ListView.builder(
                                  padding : const EdgeInsets.all(3),
                                  itemCount: Users.length,
                                  itemBuilder: (BuildContext context, int index){
                                    return Card(
                                      color: Colors.white,

                                      child: ListTile(
                                        title : Text('${Users[index]}', style: TextStyle(color : Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
                                        onTap: (){ print('${Users[index]}'); },
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.cyan,
                                          child: Center(child : Text('${Names[index]}', style: TextStyle(color: Colors.white),)),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                        ]),
                      ))
                    ],
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
            ),
          ],
        ),
      );
  }
}