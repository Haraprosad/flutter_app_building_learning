import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Long ListView Practice",
      home: Scaffold(
        appBar: AppBar(title: Text("ListView Tutorial")),
        body: getListView(),
      ),
    )
  );
}

//Step-01: make data source
List<String> listItems(){
  var list = List<String>.generate(1000, (counter)=>"Item $counter");
  return list;
}

//Step-02: convert data source to widget
Widget getListView(){
  var litem = listItems();
  var listV = ListView.builder(itemBuilder: (context,index){
    return ListTile(
      title: Text("${litem[index]}"),
      leading: Icon(Icons.landscape),
      trailing: Icon(Icons.phone),
      subtitle: Text("${litem[index]} is displayed"),
      onTap: (){
        var alertDialog = AlertDialog(
          title: Text("You pressed ${litem[index]}"),
        );
      showDialog(context: context,builder: (BuildContext context){
        return alertDialog;
      });
        },
    );
  });
  return listV;
}