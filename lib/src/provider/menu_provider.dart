import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{
  List<dynamic> opcionMenus = [];
  _MenuProvider(){
    _cargarData();
  }

  void _cargarData() {
    rootBundle.loadString('assets/data/menu_opts.json').then((data){
      print(data);
    });
  }
}

final menuProvider = new _MenuProvider();