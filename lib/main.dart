import 'package:flutter/material.dart';
import 'package:vehispace_admin/pages/homepage.dart';
import 'package:vehispace_admin/pages/adminmenupage.dart';
import 'package:vehispace_admin/pages/loginpage.dart';
import 'package:vehispace_admin/services/progresstowing.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vehispace Admin Portal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff003399),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/login' : (context) => LoginPage(),
        '/adminmenu' : (context) => AdminMenu(),
        '/towingprogress' : (context) => TowingRequestProgress(),
      },
      // home:MyHomePage(),       
        //  AdminMenu(), 
    );
  }
}