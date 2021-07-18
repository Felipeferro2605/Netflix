import 'package:flutter/material.dart';
import 'package:netflix/Paginas/page_series.dart';

import 'Paginas/Inicio.dart';
import 'Paginas/recibir.dart';
import 'Paginas/login.dart';
import 'Paginas/page_peliculas.dart';
import 'dart:io';

import 'Paginas/registro.dart';

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
        "/login": (BuildContext context) => LoginPage(),
        "/inicio": (BuildContext context) => InicioPage(),
        "/peliculas": (BuildContext context) => PagePeliculas(),
        "/registro": (BuildContext context) => PageRegister(),
        "/series": (BuildContext context) => PageSeries(),
        "/recibir": (BuildContext context) => PageRecibir(
              usuario: "",
              password: "",
            ),
      },
    );
  }
}
