import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class PageRegister extends StatelessWidget {
  const PageRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Registro"),
      ),
      body: RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget {
  RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              onSaved: (value) {},
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Apellido',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Correo',
                hintText: 'ejemplo@correo.com',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Usuario',
                hintText: 'XxUsuarioxX',
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Center(child: _registerButton()),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _registerButton() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Column(
        children: <Widget>[
          Container(
            child: FlatButton.icon(
              onPressed: () {
                _showPageLogin(context);
              },
              color: Colors.grey,
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
              label: Text('Registrarse'),
            ),
          )
        ],
      );
    });
  }

  void _showPageLogin(BuildContext context) {
    Navigator.of(context).pushNamed("/login");
  }
}
