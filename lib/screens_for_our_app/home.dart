import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child:  Container( //To take into account of container height
      alignment: Alignment.center,  //and weight we can use Center widget
      color: Colors.deepPurple,    // as the parent widget of container
      width: 200.0,
      height: 100.0,
      child: Text(
        "Niloy",
        textDirection: TextDirection.ltr,
      ),
    )
    );

  }

}