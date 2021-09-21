import 'package:flutter/material.dart';

class InputTwoPage extends StatefulWidget {
  InputTwoPage({Key? key}) : super(key: key);

  @override
  _InputTwoPageState createState() => _InputTwoPageState();
}

class _InputTwoPageState extends State<InputTwoPage> {
  List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];
  String _opcionSeleccionada = 'Volar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input 2')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 15.0),
        children: [_crearInputDropdown()],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.reply),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  Widget _crearInputDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton<String>(
            value: _opcionSeleccionada,
            items: getOptionDropdown(),
            onChanged: (String? opcionSeleccionada) {
              setState(() {
                _opcionSeleccionada = opcionSeleccionada!;
              });
            },
          ),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> getOptionDropdown() {
    List<DropdownMenuItem<String>> listaOpcione = [];
    _poderes.forEach((poder) {
      listaOpcione.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return listaOpcione;
  }
}
