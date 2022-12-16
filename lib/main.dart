import 'package:flutter/material.dart' show BuildContext, Colors, MaterialApp, StatelessWidget, TextStyle, TextTheme, ThemeData, Widget, runApp show BuildContext, Colors, MaterialApp, StatelessWidget, TextStyle, TextTheme, ThemeData, Widget, runApp;
import 'package:resep_makanan/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Makanan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.white,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: HomePage(),
    );
  }
}
