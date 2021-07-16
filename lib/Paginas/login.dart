import 'package:flutter/material.dart';
import 'package:netflix/Paginas/inicio.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = "login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/imgs/LogoInicio.png',
                height: 300.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              _userTextfield(),
              SizedBox(
                height: 15.0,
              ),
              _passwordTextfield(),
              SizedBox(
                height: 15.0,
              ),
              _loginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userTextfield() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@correo.com',
            labelText: 'Userio',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextfield() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.password),
            labelText: 'Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _loginButton() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text('IniciarSesion'),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          _showPageInicio(context);
        },
      );
    });
  }

  void _showPageInicio(BuildContext context) {
    Navigator.of(context).pushNamed("/inicio");
  }
}
