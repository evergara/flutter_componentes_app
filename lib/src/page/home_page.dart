import 'package:flutter/material.dart';

import 'package:componentes_app/src/provider/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _listWidget(),
    );
  }

  Widget _listWidget() {
    print(menuProvider.opcionMenus);
    return ListView(
      children: ListItemListView()
    );
  }

  List<Widget> ListItemListView() {
    return[
      ListTile(title: Text('Hola mundo')),
      ListTile(title: Text('Hola mundo')),
      ListTile(title: Text('Hola mundo')),
      ListTile(title: Text('Hola mundo')),
    ];
  }
}
