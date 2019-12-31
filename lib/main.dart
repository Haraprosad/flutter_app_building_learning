import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Learning ListView",
    home: Scaffold(
      appBar: AppBar(title: Text("ListView Structured")),
      body: getListView(),
    ),
  ));
}

class getListView extends StatelessWidget {
  AssetImage assetImage = AssetImage('images/plc.jpg');

  @override
  Widget build(BuildContext context) {
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Welcome boss:Niloy"),
          subtitle: Text("Boss,you have to reach your goal"),
          trailing: Image(
            image: assetImage,
          ),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Welcome boss:Niloy"),
          subtitle: Text("Boss,you have to reach your goal"),
          trailing: Image(
            image: assetImage,
          ),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Make Phone call"),
          onTap: () {
            var alertDialog = AlertDialog(
              title: Text("Successfull"),
              content: Text("You have pressed: 'Make a phone call element'"),
            );
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alertDialog;
                });
          },
        ),
        Text(
          "This is a widget array.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
      ],
    );
    return listView;
  }
}
