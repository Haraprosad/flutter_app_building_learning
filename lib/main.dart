import 'package:flutter/material.dart';
import 'package:flutter_app/screens_for_our_app/home.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false, //To remove debug symbol from screen
        title: "Exploring UI widgets",
        home: Home(),
      )
  );
}
//step-1: download font from fonts.google.com
//step-2: unzip file and copy required fonts
//step-3: Create a new directory in main app named fonts
//step-4: paste the fonts to the folder
//step-5: Modify pubspec.yaml folder's code for fonts
//step-6: Now, you can use the fonts
//NB: If you use exact font follow the given property in website
//On the other hand,you can modify the property according to your wish