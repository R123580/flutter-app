import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  postData() async{
    var response = await http.post(Uri.parse(" https://demo1779595.mockable.io/companies"),
    body:{
      "id":1.toString(),
      "name":"rohan",
      "email":"rohansharma0606@gmail.com"
    });
    print(response.body);
  }  
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("contact list"),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text(
              'Show me the contact list:',
            ),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
      onPressed: postData,
      tooltip:'Increment',
      child: Icon(Icons.add),
    )
   );
  }
}  