import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 50.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Slider')),
        body: Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              children: <Widget>[
                _createSlider(),
                _crearCheckbox(),
                _crearSwitch(),
                Expanded(child: _crearImagen()),
              ],
            )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.reply),
          onPressed: () => Navigator.pop(context),
        ));
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen $_valorSlider',
      value: _valorSlider,
      min: 50.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2yB-S3MGj3BSNCEU4c80DnkK7jQZHO4IJasahnMVm2lLNO4HWzonTcJyIo7DJ7RkMuFg&usqp=CAU'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    /*
    return Checkbox(
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });
  }*/

    return CheckboxListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }
}
