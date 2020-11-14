import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TranslateState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Translate();
  }
}
class _Translate extends State<TranslateState>{
  String query = "";
  String lang1 = "русский";
  String lang2 = "english";
  final String result = "";


  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(7),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            height:  MediaQuery.of(context).size.height - 110,
            padding: EdgeInsets.all(9),
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
            ),
           child: Center(
             child: Column(
               children: [
                 TextField(
                   onChanged:(value){
                     setState(() {
                       this.query = value;
                       print(this.query);
                     });
                   },
                   maxLines: 3,
                   style: TextStyle(color: Colors.black87, fontSize: 18),
                   autocorrect: true,
                   keyboardType: TextInputType.text,
                   decoration: InputDecoration(
                     focusColor: Colors.white60,
                     labelText: "Перевести...",
                     labelStyle: TextStyle(color: Colors.black87),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide : BorderSide( width: 2, color : Colors.blueAccent)
                     ),
                       focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                           borderSide: BorderSide( width: 2, color : Theme.of(context).accentColor)
                       )
                   ),
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     DropdownButton<String>(
                          value: lang1,
                         underline: Container(
                           height: 2,
                           color: Colors.deepPurpleAccent,
                         ),
                         dropdownColor: Colors.white,
                         items: <String>["русский", "english", "francais"]
                             .map<DropdownMenuItem<String>>((String value){
                               return DropdownMenuItem<String>(
                                   value: value,
                                   child: Text(value, style: TextStyle(color: Colors.black87))
                               );
                         }).toList(),
                       onChanged: (String newValue){
                            setState((){
                              if(lang2 == newValue){
                                lang2 = lang1;
                                lang1 = newValue;
                              }
                              lang1 = newValue;
                            });
                       }
                       ),
                     RawMaterialButton(
                       onPressed: () {
                         setState(() {
                           String first = lang1;
                           String second = lang2;
                           lang1 = second;
                           lang2 = first;
                         });
                       },
                       elevation: 2.0,
                       fillColor: Colors.blueAccent,
                       child: Icon(
                         Icons.repeat_outlined,
                         size: 20.0,
                       ),
                       padding: EdgeInsets.all(6.0),
                       shape: CircleBorder(),
                     ),
                     DropdownButton<String>(
                         value: lang2,
                         underline: Container(
                           height: 2,
                           color: Colors.deepPurpleAccent,
                         ),
                         dropdownColor: Colors.white,
                         items: <String>["русский", "english", "francais"]
                             .map<DropdownMenuItem<String>>((String value){
                           return DropdownMenuItem<String>(
                               value: value,
                               child: Text(value, style: TextStyle(color: Colors.black87))
                           );
                         }).toList(),
                         onChanged: (String newValue){
                           setState((){
                             if(lang1 == newValue){
                               lang1 = lang2;
                               lang2 = newValue;
                             }
                             lang2 = newValue;
                           });
                         }
                     ),
                   ]
                 ),
                 Container(
                   height: 400,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border(top : BorderSide(
                           color: Colors.blueAccent,
                            width : 1.0))
                   ),
                   child: Column(
                     children: [
                       SingleChildScrollView(
                         scrollDirection: Axis.vertical,
                         child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                             decoration: BoxDecoration(
                                 color: Colors.grey[200],
                                 border: Border(bottom : BorderSide(
                                     color: Colors.blueAccent,
                                     width : 1.0))
                             ),
                             padding : EdgeInsets.only(left: 4, top: 12),
                             alignment: Alignment.topLeft,
                             child:
                             Text("Перевод...", style: TextStyle(color: Colors.black87, fontSize: 20))),
                       ),
                       SizedBox(height: 35),
                       FlatButton(
                         onPressed: (){
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
                                 Colors.blueAccent,
                                 Colors.blueAccent,
                                 Colors.blue,
                               ],
                             ),
                           ),
                           child: Container(
                               alignment: Alignment.center,
                               constraints: BoxConstraints(minHeight: 50, maxWidth: double.infinity),
                               child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Icon(Icons.assignment_turned_in, color : Colors.white),
                                   Text(" Перевести", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),textAlign: TextAlign.center)
                                 ],)

                           ),
                         ),
                       )
                     ],
                   ),
                 )
               ],
             ),
           )
        ),
      ),
    );
  }
}