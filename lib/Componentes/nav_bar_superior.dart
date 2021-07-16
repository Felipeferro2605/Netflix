import 'package:flutter/material.dart';
import 'package:netflix/Paginas/page_peliculas.dart';
import 'package:netflix/Paginas/page_series.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/imgs/logo.jpg',
              width: 30,
            ),
            SizedBox(
              width: 30,
            ),
            botonera(context),
          ],
        ));
  }

  Widget botonera(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            FlatButton(
              child: Text(
                'Peliculas',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                _showPagePeliculas(context);
              },
            ),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(
              child: Text(
                'Series',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                _showPageSeries(context);
              },
            ),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(
              child: Text(
                'Ovas',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  void _showPagePeliculas(BuildContext context) {
    Navigator.of(context).pushNamed("/peliculas",
        arguments: PagePeliculasArgument(name: "Ferro"));
  }

  void _showPageSeries(BuildContext context) {
    Navigator.of(context).pushNamed("/series");
  }
}
