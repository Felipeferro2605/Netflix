import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';

class PagePeliculas extends StatelessWidget {
  const PagePeliculas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MaterialApp(
          title: ("Peliculas"),
          home: ListaPeliculas(),
        )
      ],
    );
  }
}

class ListaPeliculas extends StatelessWidget {
  final rnd = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text(
              "Peliculas",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            expandedHeight: 300,
            flexibleSpace: Image.asset(
              'assets/imgs/LogoPeliculas.jpg',
              height: 330,
              fit: BoxFit.cover,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              for (var i = 0; i < 100; i++)
                ListTile(
                  title: Text(i.toString()),
                )
            ]),
          )
        ],
      ),
    );
  }

  Widget _litspeliculas(context) {
    return Column(
      children: <Widget>[Text("hola")],
    );
  }
}

class PagePeliculasArgument {
  String name;
  PagePeliculasArgument({required this.name});
}
