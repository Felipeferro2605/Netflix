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
                  child: Image.asset(
                    'assets/imgs/peliculas/castillo.jpg',
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
                  child: Image.asset(
                    'assets/imgs/peliculas/mary.jpg',
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
                  child: Image.asset(
                    'assets/imgs/peliculas/mei.jpg',
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
                  child: Image.asset(
                    'assets/imgs/peliculas/sona.jpg',
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
