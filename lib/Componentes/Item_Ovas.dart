import 'package:flutter/material.dart';

class ItemOvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3)),
                child: ClipPath(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5Tyt6ku5hHbXlu04m6ZPVl9tnEafqsUFZfg&usqp=CAU',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3)),
                child: ClipPath(
                  child: Image.network(
                    'https://spoiler.bolavip.com/__export/1618091990454/sites/bolavip/img/2021/04/10/death_note_crop1618091823003.jpg_1902800913.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3)),
                child: ClipPath(
                  child: Image.network(
                    'https://cdn.alfabetajuega.com/wp-content/uploads/2020/04/my-hero-academia-deku-780x405.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3)),
                child: ClipPath(
                  child: Image.network(
                    'https://cdn.alfabetajuega.com/wp-content/uploads/2020/01/anime-780x405.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
      ],
    );
  }
}
