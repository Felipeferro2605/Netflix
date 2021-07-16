import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  border: Border.all(color: Colors.yellow, width: 3)),
              child: ClipOval(
                child: Image.asset(
                  'assets/imgs/itemsRedondeados/aka.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}

class ItemRedondeado2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  border: Border.all(color: Colors.red, width: 3)),
              child: ClipOval(
                child: Image.asset(
                  'assets/imgs/itemsRedondeados/kakashi.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}

class ItemRedondeado3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  border: Border.all(color: Colors.green, width: 3)),
              child: ClipOval(
                child: Image.asset(
                  'assets/imgs/itemsRedondeados/ita.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}

class ItemRedondeado4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  border: Border.all(color: Colors.purple, width: 3)),
              child: ClipOval(
                child: Image.asset(
                  'assets/imgs/itemsRedondeados/mihawk-one-piece.webp',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
