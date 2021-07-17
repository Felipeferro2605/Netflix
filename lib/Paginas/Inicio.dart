import 'package:flutter/material.dart';
import 'package:netflix/Componentes/CartelPrincipal.dart';
import 'package:netflix/Componentes/Item_Ovas.dart';
import 'package:netflix/Componentes/Item_imagen.dart';
import 'package:netflix/Componentes/item_redondeado.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            CartelPrincipal(),
            this.listaHorizontal(),
            this.listaHorizontal2('Peliculas', ItemImg(), 12),
            this.listaHorizontal2('Ovas', ItemOvas(), 12),
          ],
        ),
        bottomNavigationBar: this.naviInferior());
  }

  BottomNavigationBar naviInferior() {
    final List<Widget> _children = [];

    int _currenIndex = 0;

    return BottomNavigationBar(
      currentIndex: _currenIndex,
      //onTap: salirLogin,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Inicio')),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), title: Text('Buscar')),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_music), title: Text('Biblioteca ')),
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_downward), title: Text('Descargas')),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Login'),
        ),
      ],
    );
  }

  Widget listaHorizontal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
          child: Text(
            'ANIMES',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              ItemRedondeado(),
              ItemRedondeado2(),
              ItemRedondeado3(),
              ItemRedondeado4(),
              ItemRedondeado5(),
              ItemRedondeado3(),
              ItemRedondeado4(),
              ItemRedondeado2(),
              ItemRedondeado3(),
              ItemRedondeado5(),
            ],
          ),
        )
      ],
    );
  }

  Widget listaHorizontal2(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        )
      ],
    );
  }
}
