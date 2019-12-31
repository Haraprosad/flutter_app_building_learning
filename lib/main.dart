import 'package:flutter/material.dart';
import 'package:flutter_app/screens_for_our_app/home.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false, //To remove debug symbol from screen
        title: "Exploring UI widgets",
        home: Home(),
      )
  );
}
