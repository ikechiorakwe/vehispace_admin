import 'package:flutter/material.dart';
 

 class Switches extends StatefulWidget {
   
   _SwitchesState createState() => _SwitchesState();
 }
 
 class _SwitchesState extends State<Switches> {

   bool switchControl = false;
   var textHolder = 'In Progress';

   void toggleSwitch (bool value) {

     if (switchControl == false) {
       setState(() {
         switchControl = true;  
          textHolder = 'Completed';          
       });
     } else {
       setState(() {
        switchControl = false; 
        textHolder = 'In Progress';
       });
     }
   }

   @override
   Widget build(BuildContext context) {
     return Row (
       children: <Widget>[
         Text('$textHolder', style: TextStyle(fontSize: 14)),
         Switch(
           onChanged: toggleSwitch,
           value: switchControl,
           activeColor: Color(0xff003399),        
         ),
       ],
     );
   }
 }