import 'package:flutter/material.dart';
import 'package:componentes_app/src/page/homepage_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageTemp()
    );
  }
}
