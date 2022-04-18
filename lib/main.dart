import 'package:flutter/material.dart';
import 'package:companies/homepage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "contact list",
      theme: ThemeData(
        primarySwatch:Colors.red, 
        ),
       home: HomePage(),
    );
  }
}