import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() => runApp(PageRegister());

class PageRegister extends StatefulWidget {
  PageRegister({Key? key}) : super(key: key);

  @override
  _PageRegisterState createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),
      ),
    );
  }
}
