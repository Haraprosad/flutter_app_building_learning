import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';

void main() {
  runApp(MaterialApp(
    title: "Practice for Dropdown Menu",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Menu Practice"),
      ),
      body: FavouriteName(),
    ),
  ));
}

class FavouriteName extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _favouriteNameState();
  }
}

class _favouriteNameState extends State<FavouriteName> {
  var favNamesVar = ["Shiv", "Somvhu", "Rudro", "Mohadev"];
  var selectName = "Shiv";
  Widget picWidget = ImageSeletion.getMohadevWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            picWidget,
            DropdownButton<String>(
              items: favNamesVar.map((String inputString) {
                return DropdownMenuItem(
                  value: inputString,
                  child: Text(inputString),
                );
              }).toList(),
              onChanged: (String userInput) {
                setState(() {
                  selectName = userInput;
                  switch (selectName) {
                    case 'Shiv':
                      picWidget = ImageSeletion.getShivWidget();
                      break;
                    case 'Somvhu':
                      picWidget = ImageSeletion.getSomvhuWidget();
                      break;
                    case 'Rudro':
                      picWidget = ImageSeletion.getRudroWidget();
                      break;
                    default :
                      picWidget = ImageSeletion.getMohadevWidget();
                  }
                });
              },
              value: selectName,
            ),
          ],
        ));
  }
}

class ImageSeletion {
  static AssetImage shiv = AssetImage('images/shiv.jpg');
  static AssetImage mohadev = AssetImage('images/mohadev.jpg');
  static AssetImage rudro = AssetImage('images/rudro.jpg');
  static AssetImage somvhu = AssetImage('images/somvhu.jpg');

  static Widget getShivWidget() =>
      Container(child: Image(image: shiv, width: 200, height: 200));

  static Widget getSomvhuWidget() =>
      Container(child: Image(image: somvhu, width: 200, height: 200));

  static Widget getMohadevWidget() =>
      Container(child: Image(image: mohadev, width: 200, height: 200));

  static Widget getRudroWidget() =>
      Container(child: Image(image: rudro, width: 200, height: 200));
}
