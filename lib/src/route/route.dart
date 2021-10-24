import 'package:flutter/material.dart';

import 'package:componentes_app/src/page/card_page.dart';
import 'package:componentes_app/src/page/avatar_page.dart';
import 'package:componentes_app/src/page/alert_page.dart';
import 'package:componentes_app/src/page/home_page.dart';
import 'package:componentes_app/src/page/animated_container.dart';
import 'package:componentes_app/src/page/Input_page.dart';
import 'package:componentes_app/src/page/inputtwo_oage.dart';
import 'package:componentes_app/src/page/slider_page.dart';
import 'package:componentes_app/src/page/Listview_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'input': (BuildContext context) => InputPage(),
    'inputTwo': (BuildContext context) => InputTwoPage(),
    'slider': (BuildContext context) => SliderPage(),
    'listview': (BuildContext context) => ListaPage(),
  };
}
