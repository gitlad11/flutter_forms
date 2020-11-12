import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_app/Screens/Profile_Screen.dart';

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
    "Профиль",
    "Настройки"
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
      body: ProfileScreenState(),
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
            icon: Icon(Icons.perm_identity_sharp),
            title: Text('Профиль'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Настройки'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      )
    );
  }
}
