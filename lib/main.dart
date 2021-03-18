import 'package:flutter/material.dart';
import 'package:flutterp2ej1/src/pages/homepage_alternativo.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'listTile APP',
      home: HomePageAlternativo()
    );
  }
}