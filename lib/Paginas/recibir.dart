import 'package:flutter/material.dart';

class PageRecibir extends StatelessWidget {
  const PageRecibir({Key? key, required this.usuario, required this.password})
      : super(key: key);

  final String usuario;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.usuario + this.password),
    );
  }
}
