import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(right: 8, left: 8, top: 24),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                      child:
                          Center(child: MyTextClass.getTextWidget1("Niloy"))),
                  Expanded(
                      child: Center(
                          child: MyTextClass.getTextWidget1(
                              "Do you want to go USA?")))
                ]),
                Padding(padding: EdgeInsets.only(bottom: 16)),
                Row(children: <Widget>[
                  Expanded(
                      child: Center(
                          child: MyTextClass.getTextWidget1("Haraprosad"))),
                  Expanded(
                      child: Center(
                          child: MyTextClass.getTextWidget1(
                              "Do you want to go Canada?")))
                ]),
                Padding(padding: EdgeInsets.only(bottom: 16)),
                myImageAsset(),
                BookingPlcButton()
              ],
            )));
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
          fontSize: 25.0,
          //To modify font size
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
          color: Colors.white),
    );
  }
}

class myImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/plc.jpg');
    Image image = Image(
      image: assetImage,
    );
    return Container(
      child: image,
    );
  }
}

class BookingPlcButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      height: 60,
      width: 200,
      child: RaisedButton(
          child: Text(
            "Render A PLC",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
          elevation: 6.0,
          color: Colors.deepOrange,
          onPressed: () {
            renderFlight(context);
          }),
    );
  }

  void renderFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Your request is accepted."),
      content: Text("Have a pleasant moment with advanced technology."),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
