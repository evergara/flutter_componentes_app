import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final verbos = ["Be", 'Have', 'Pay', 'See', 'Speak', 'Take','keep','Live', 'Life'];
  static const String VERBS_ING = 'ing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Component App'),
        ),
        body: ListView(
          children: _crearItemsWidgetCota()
        )
    );
  }

  List<Widget> _crearItemsWidget(){
    List<Widget> widgets = [];
    for(String item in verbos ){
      final widgetTemp = ListTile(
        title: Text(item),
      );
      /*
      *Esto lo remplaza el operador de cascada
      widgets.add(widgetTemp);
      widgets.add(Divider(height: 30.0));
      */
      //Uso del operador de cascada
      widgets..add(widgetTemp)
             ..add(Divider(height: 20.0));
    }
   return widgets;
  }
  List<Widget> _crearItemsWidgetCota(){
     return verbos.map((item){
       return Column(
         children: [
           ListTile(
             title: Text(item),
             subtitle:Text('$item$VERBS_ING') ,
             leading: Icon(Icons.account_balance_wallet),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: (){},
           ),
           Divider(height: 15.0)
         ],
       );
     }).toList();
  }
}