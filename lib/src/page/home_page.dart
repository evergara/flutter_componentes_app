import 'package:flutter/material.dart';

import 'package:componentes_app/src/provider/menu_provider.dart';
import 'package:componentes_app/src/utils/util.dart';

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
/**
  Widget _listWidget() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Text("Loading"),
            );
          } else {
            //List<dynamic> data = (snapshot.data as List<dynamic>).toList();
            return ListView(children: _ListItemListView(snapshot.data, context));
          }
        });
  }
*/

  Widget _listWidget() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          List<dynamic> data = (snapshot.data as List<dynamic>).toList();
          return ListView(
            children: _ListItemListView(data, context),
          );
        });
  }

  List<Widget> _ListItemListView(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((item) {
      final widgetTemp = ListTile(
        title: Text(item['texto']),
        leading: getIcon(item['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () => Navigator.pushNamed(context, item['ruta']),
      );
      opciones
        ..add(widgetTemp)
        ..add(Divider(height: 15.0));
    });
    return opciones;
  }

  List<Widget> _errorListView() {
    return <Widget>[
      const Icon(
        Icons.error_outline,
        color: Colors.red,
        size: 60,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text('Error: error'),
      )
    ];
  }
}
