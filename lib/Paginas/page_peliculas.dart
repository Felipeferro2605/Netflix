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
          title: ("jaja si funciona"),
          home: ListaPeliculas(),
        )
      ],
    );
  }
}

class ListaPeliculas extends StatelessWidget {
  final rnd = new Random();
  final List<Image> imagenes = [
    Image.network(
        "https://areajugones.sport.es/wp-content/uploads/2021/02/anime-2021.jpg"),
    Image.network(
        "https://i.blogs.es/9bdf51/kimetsu-no-yaiba-anime-crunchyroll-mexico/450_1000.jpg"),
    Image.network(
        "https://as.com/meristation/imagenes/2021/03/13/reportajes/1615633069_923466_1615634298_sumario_normal.jpg"),
    Image.network(
        "https://cdn.alfabetajuega.com/wp-content/uploads/2020/09/sword-art-online-780x405.jpg"),
    Image.network(
        "https://areajugones.sport.es/wp-content/uploads/2020/05/peores-animes-de-siempre-min.jpg"),
    Image.network("https://media.redadn.es/imagenes/fer_279390.jpg"),
    Image.network(
        "https://xiahpop.com/wp-content/uploads/2021/04/Los-mejores-animes-de-la-temporada-de-invierno-2021.jpg"),
    Image.network(
        "https://www.playerone.vg/wp-content/uploads/2020/01/1-12-e1578282709317.jpg"),
  ];
  final List<Color> colores = [
    Colors.red,
    Colors.yellow,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.grey,
    Colors.orange,
    Colors.pink,
    Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(
        20,
        (i) => Container(
              width: double.infinity,
              height: 120,
              color: colores[rnd.nextInt(this.colores.length)],
            ));

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("hola"),
            expandedHeight: 200,
            flexibleSpace: Image.network(
              "https://www.playerone.vg/wp-content/uploads/2020/01/1-12-e1578282709317.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(items),
          )
        ],
      ),
    );
  }
}

class PagePeliculasArgument {
  String name;
  PagePeliculasArgument({required this.name});
}

class peliculas extends StatelessWidget {
  const peliculas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Image> imagenes = [
      Image.network(
          "https://areajugones.sport.es/wp-content/uploads/2021/02/anime-2021.jpg"),
      Image.network(
          "https://i.blogs.es/9bdf51/kimetsu-no-yaiba-anime-crunchyroll-mexico/450_1000.jpg"),
      Image.network(
          "https://as.com/meristation/imagenes/2021/03/13/reportajes/1615633069_923466_1615634298_sumario_normal.jpg"),
      Image.network(
          "https://cdn.alfabetajuega.com/wp-content/uploads/2020/09/sword-art-online-780x405.jpg"),
      Image.network(
          "https://areajugones.sport.es/wp-content/uploads/2020/05/peores-animes-de-siempre-min.jpg"),
      Image.network("https://media.redadn.es/imagenes/fer_279390.jpg"),
      Image.network(
          "https://xiahpop.com/wp-content/uploads/2021/04/Los-mejores-animes-de-la-temporada-de-invierno-2021.jpg"),
      Image.network(
          "https://www.playerone.vg/wp-content/uploads/2020/01/1-12-e1578282709317.jpg"),
    ];
    return Container(
      child: Text("hola"),
    );
  }
}
