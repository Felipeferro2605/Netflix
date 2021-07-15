import 'package:flutter/material.dart';

import 'nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://cloudfront-us-east-1.images.arcpublishing.com/elcomercio/YIVCS7Q5N5FA7KFJK5MIOZJIZQ.jpg',
          height: 400,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 400.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Colors.black38,
                Colors.black,
              ])),
        ),
        SafeArea(
          child: NavBarSuperior(),
        )
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Shonen',
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 8,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          'Romance',
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 8,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          'Isekai',
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 8,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          'Aventuras',
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.check, color: Colors.white),
              SizedBox(
                width: 3,
              ),
              Text(
                'Mi lista',
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
          FlatButton.icon(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          Column(
            children: <Widget>[
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(
                width: 3,
              ),
              Text(
                'Informacion',
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
        ],
      ),
    );
  }
}
