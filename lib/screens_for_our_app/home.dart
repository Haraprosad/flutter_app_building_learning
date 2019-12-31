import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child:  Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      padding: EdgeInsets.all(16),//To use margin/padding: EdgeInset is used
      margin: EdgeInsets.only(top: 55,left: 35),
      child: Text(
        "Niloy",
        textDirection: TextDirection.ltr,
      ),
    )
    );

  }

}