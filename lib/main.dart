import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Statefull widget tutorial",
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful widget tutorial"),),
        body: favouriteCity(),
      ),
    )
  );
}

//Step-1: create a class extended StatefulWidget

class favouriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _favouriteCityState();
  }

}

//Step-02: Create a class extended State<above_class>
class _favouriteCityState extends State<favouriteCity>{
  String cityName = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          TextField(
            textAlign: TextAlign.center,
            onSubmitted: (String userInput){
              //we can also use here onChanged: then the change will be instant
              //Step-03: call the setState method and put the changing value
              setState(() {
                cityName = userInput;
              });
            },
          ),
          Padding(
            child: Text("Your city name is: $cityName"),
            padding: EdgeInsets.only(top: 8),
          ),
        ],
      )
    );
  }
}