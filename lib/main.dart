import 'package:flutter/material.dart';
import 'package:netflix/Paginas/page_series.dart';

import 'Paginas/Inicio.dart';
import 'Paginas/login.dart';
import 'Paginas/page_peliculas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: InicioPage(),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => LoginPage(),
        "/inicio": (BuildContext context) => InicioPage(),
        "/peliculas": (BuildContext context) => PagePeliculas(),
        "/series": (BuildContext context) => PageSeries(),
      },
    );
  }
}
