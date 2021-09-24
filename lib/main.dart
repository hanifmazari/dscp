// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:dscp/config/routs.dart';
import 'package:dscp/pages/homepage.dart';
import 'package:dscp/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Home()),
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      initialRoute: "/",
      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.loginRout:(context)=>LoginPage(),
        MyRoutes.homeRout:(context) =>HomePage(),
        
      },
    );
    
  }
}
