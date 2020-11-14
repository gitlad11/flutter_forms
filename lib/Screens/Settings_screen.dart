import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/App_screen.dart';


class SettingsScreen extends StatelessWidget {
  final List<Object> entries = <Object>[{ "Icon" : "face", "set" : 'Сменить Имя'},{ "Icon" : "email" ,"set" : "Сменить Email"}, { "Icon" : "remove", "set" : "Удалить профиль"}];

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Настройки")),
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.all(10),
          child: Container(
            width: MediaQuery.of(context).size.width,
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
          ),
            child: Column(
              children: [
              GestureDetector(
                onTap: (){print("Сменить имя");},
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: Colors.lightBlue.shade600))
                    ),
                  child: Expanded(
                    flex: 1,
                    child: Row(children: [
                      Icon(Icons.face_rounded, color: Colors.black87),
                      SizedBox(width: 6),
                      Text('Сменить имя', style: TextStyle(color : Colors.black87, fontSize: 18)),
                      SizedBox(width: 8),
                      Text("Николай", maxLines: 2, overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 16))
                    ]
                    ),
                  ),
                  ),
              ),
                GestureDetector(
                  onTap: (){print("сменить email");},
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 6),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1, color: Colors.lightBlue.shade600))
                    ),
                    child: Expanded(
                      flex: 1,
                      child: Row(children: [
                        Icon(Icons.email, color: Colors.black87),
                        SizedBox(width: 6),
                        Text('Сменить Email', style: TextStyle(color : Colors.black87, fontSize: 18)),
                        SizedBox(width: 8),
                        Text('efimovi420@gmail.com', maxLines: 2, overflow: TextOverflow.ellipsis,
                            style: TextStyle( color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 16))
                      ]
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){print("выход");},
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 6),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1, color: Colors.lightBlue.shade600))
                    ),
                    child: Row(children: [
                      Icon(Icons.exit_to_app, color: Colors.black87),
                      SizedBox(width: 6),
                      Text('Выйти', style: TextStyle(color : Colors.black87, fontSize: 18))
                    ]
                    ),
                  ),
                ),
              ]
            )
          )
        ),
      ),
    );
  }
}