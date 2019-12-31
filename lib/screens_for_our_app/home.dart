import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      width: 200.0, //Height and width do not work here
      height: 100.0,// Container has taken the height and width of
      child: Text(  // materialApp widget (For Flutter properties)
        "Niloy",
        textDirection: TextDirection.ltr,
      ),
    );
  }

}