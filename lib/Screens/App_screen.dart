import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_app/Screens/Profile_Screen.dart';
import 'package:flutter_app/Screens/Main_screen.dart';
import 'package:flutter_app/Screens/Translate_screen.dart';

class AppScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}
class _AppState extends State<AppScreen>{
  int currentTab = 0;
  int counter = 0;
  var Navtabs = [
    "Главная",
    "Переводчик",
    "Профиль",
  ];
  var Screens = [
    MainScreen(),
    TranslateState(),
    ProfileScreenState()
  ];
  void _incrementCounter(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
       title : Text(this.Navtabs[this.currentTab])
      ),
      body: this.Screens[this.currentTab],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        selectedIndex: currentTab,
        onItemSelected: (index) => setState(() {
          currentTab = index;
          print(currentTab);
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Главная'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.language_rounded),
            title: Text('Переводчик'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.perm_identity_sharp),
            title: Text('Профиль'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
        ],
      )
    );
  }
}
