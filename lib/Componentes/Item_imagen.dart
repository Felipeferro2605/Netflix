import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 180,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3)),
                child: ClipPath(
                  child: Image.network(
                    'https://media.timeout.com/images/105292163/image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 180,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3)),
                child: ClipPath(
                  child: Image.network(
                    'https://sergiojamon.com/wp-content/uploads/2020/05/Mary_y_la_flor_de_la_bruja-312285351-large-753x1024.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 180,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 3)),
                child: ClipPath(
                  child: Image.network(
                    'https://finde.latercera.com/wp-content/uploads/2020/06/Amor-de-gata-2-700x450.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 180,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 3)),
                child: ClipPath(
                  child: Image.network(
                    'https://www.cinepremiere.com.mx/wp-content/uploads/2021/01/Mejores-anime-de-zombies-1-900x491.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}
