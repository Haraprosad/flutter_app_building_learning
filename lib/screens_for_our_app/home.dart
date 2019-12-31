import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          padding: EdgeInsets.only(right: 8,left: 8),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                    child: Center(child: MyTextClass.getTextWidget1("Niloy"))),
                Expanded(
                    child: Center(
                        child:
                        MyTextClass.getTextWidget1("Do you want to go USA?")))
              ]
              ),
              SizedBox(height: 16),//To create space between row1 and row2 widget
              Padding(padding: EdgeInsets.only(bottom: 16)),
              Row(children: <Widget>[
                Expanded(
                    child: Center(child: MyTextClass.getTextWidget1("Haraprosad"))),
                Expanded(
                    child: Center(
                        child:
                        MyTextClass.getTextWidget1("Do you want to go Canada?")))
              ]
              )
            ],
            ))


        )
    ;
  }
}

class MyTextClass {
  static String message;

  static Text getTextWidget1(String msg) {
    message = msg;
    return Text(
      "$message",
      textDirection: TextDirection.ltr,
      style: TextStyle(
          decoration: TextDecoration.none,
          //default: underline
          fontSize: 30.0,
          //To modify font size
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
          color: Colors.white),
    );
  }
}
