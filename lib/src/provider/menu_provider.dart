import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> _opcionMenus = [];

  _MenuProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final response =
        await rootBundle.loadString('recursos/data/menu_opts.json');
    Map dataMap = json.decode(response);
    _opcionMenus = dataMap['rutas'];
    return _opcionMenus;
  }
}

final menuProvider = new _MenuProvider();
