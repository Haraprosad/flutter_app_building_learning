import 'package:flutter/material.dart';
import 'package:flutter_app/screens_for_our_app/first_screen.dart';

void main()=> runApp(MyFlutterApp());

//Class for reducing main method code
   class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(title: "Welcome to my app",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title:Text("Thanks Boss")),
            body:   FirstScreen()
        )
    );
  }

   }