import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child:  Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      child: Text(
        "Niloy",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            decoration: TextDecoration.none,//default: underline
            fontSize: 70.0,  //To modify font size
            fontFamily:'Raleway',fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            color:Colors.white
        ),
      ),
    )
    );

  }

}