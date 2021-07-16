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
                  child: Image.asset(
                    'assets/imgs/ovas/kake.jpg',
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
                  child: Image.asset(
                    'assets/imgs/ovas/midorima.webp',
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
                  child: Image.asset(
                    'assets/imgs/ovas/riuk.webp',
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
                  child: Image.asset(
                    'assets/imgs/ovas/over.webp',
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
