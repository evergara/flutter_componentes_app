import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Component App'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Lista de registros'),
            ),
            Divider(),
            ListTile(
              title: Text('Lista de registros'),
            ),
            Divider(),
            ListTile(
              title: Text('Lista de registros'),
            ),
            Divider()
          ],
        )
    );
  }
}