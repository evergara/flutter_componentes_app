import 'package:flutter/material.dart';

import 'package:componentes_app/src/route/route.dart';
import 'package:componentes_app/src/page/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llama ${settings.name}');

        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      },
    );
  }
}
