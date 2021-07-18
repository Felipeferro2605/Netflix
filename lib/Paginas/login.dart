import 'package:flutter/material.dart';
import 'package:netflix/Paginas/inicio.dart';
import 'package:netflix/Paginas/recibir.dart';
import 'package:netflix/Paginas/registro.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class LoginPage extends StatefulWidget {
  static String id = "login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usuario = TextEditingController();
  final password = TextEditingController();

  String usu = "";
  String pass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[Text("No Estas Registrado?"), _registerButton()],
          ),
          SizedBox(
            height: 60.0,
          ),
          Image.asset(
            'assets/imgs/LogoInicio.png',
            height: 200.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Transform.translate(
            offset: Offset(0, 0),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 40),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
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
                        Container(
                          child: Center(child: _loginButton()),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _userTextfield() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          controller: usuario,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Ejemplo@correo.com',
            labelText: 'Usuario',
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
          controller: password,
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
        color: Colors.amber,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text('Iniciar Sesión'),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          usu = usuario.text;
          pass = password.text;
          print(usu + "" + pass);
          usuario.text = "";
          password.text = "";

          if (usu == "" || pass == "") {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.black,
                    content: Row(
                      children: <Widget>[
                        Text(
                          "INGRESE LOS DATOS SOLICITADOS",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "OK",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  );
                });
          } else if (usu == "felipe" && pass == "1234") {
            _showPageRecibir(context);
          } else if (usu != "felipe" && pass != "1234") {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.black,
                    content: Row(
                      children: <Widget>[
                        Text(
                          "Usuario o Contraseña Inconrrecta",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "OK",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  );
                });
          }
        },
      );
    });
  }

  Widget _registerButton() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Column(
        children: <Widget>[
          Container(
            child: FlatButton.icon(
              onPressed: () {
                _showPageRegister(context);
              },
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

  void _showPageRegister(BuildContext context) {
    Navigator.of(context).pushNamed("/registro");
  }

  void _showPageInicio(BuildContext context) {
    Navigator.of(context).pushNamed("/inicio");
  }

  void _showPageRecibir(BuildContext context) async {
    //try{
    var url = '';
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return PageRecibir(
        usuario: usu,
        password: pass,
      );
    });
    Navigator.of(context).push(route);
    //}catch{

    //}
  }
}
