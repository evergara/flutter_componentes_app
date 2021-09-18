import 'package:flutter/material.dart';

import 'package:componentes_app/src/page/card_page.dart';
import 'package:componentes_app/src/page/avatar_page.dart';
import 'package:componentes_app/src/page/alert_page.dart';
import 'package:componentes_app/src/page/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
