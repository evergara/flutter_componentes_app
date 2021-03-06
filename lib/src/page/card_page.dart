import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);
  final String urlImagen =
      'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 10.0),
        children: <Widget>[
          _cardWidget1(),
          SizedBox(height: 20.0),
          _cardWidget2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.reply),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  Widget _cardWidget2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading/preloader.gif'),
            image: NetworkImage(urlImagen),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('Imagen de internet')),
        ],
      ),
    );
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 10.0)),
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: card,
        ));
  }

  Widget _cardWidget4() {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading/preloader.gif'),
            image: NetworkImage(urlImagen),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('Imagen de internet')),
        ],
      ),
    );
  }

  Widget _cardWidget3() {
    return Card(
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(urlImagen),
          ),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('Imagen de internet')),
        ],
      ),
    );
  }

  Widget _cardWidget1() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text('Card Page'),
              subtitle: Text('Card description page'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(child: Text('Aceptar'), onPressed: () => {}),
                TextButton(child: Text('Cancelar'), onPressed: () => {}),
              ],
            )
          ],
        ));
  }
}
