import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Long ListView Practice",
      home: Scaffold(
        appBar: AppBar(title: Text("ListView Tutorial")),
        body: getListView(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          tooltip: "You pressed floating button.",
          onPressed: (){
            debugPrint("You have pressed floatingButton.");
          },
        ),
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
       showSnackBar(context,"${litem[index]}");
        },
    );
  });
  return listV;
}

//For showing snackbar

void showSnackBar(BuildContext context,String a){
  var msg = SnackBar(
    content: Text("You have pressed $a"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: (){
        debugPrint("You are pressed dummy Undo.");
      },
    ),
  );
  Scaffold.of(context).showSnackBar(msg);
}