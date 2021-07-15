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
                child: Image.network(
                  'https://static.wikia.nocookie.net/kurokonobasuke/images/b/b4/LG_Akashi.png/revision/latest?cb=20170802091307',
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
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi3PmzZTOg6yJ5-XCtxg7PxBTLIBzMlPDSHg&usqp=CAU',
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
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnrvL_hDLUPPgFLvC8RN__Jzpk1oLqtjYc5w&usqp=CAU',
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
                child: Image.network(
                  'https://cdn.alfabetajuega.com/wp-content/uploads/2019/07/mihawk-one-piece.jpg',
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
