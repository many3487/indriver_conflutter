import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:indriver_clone_flutter/src/presentation/widgets/DefaultButtom.dart';
import 'package:indriver_clone_flutter/src/presentation/widgets/DefaultTextField.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 12, 38, 145),
                  Color.fromARGB(255, 34, 156, 249),
                ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //horizontal
            mainAxisAlignment: MainAxisAlignment.center, //vertical
            children: [
              _textLoginRotated(), //para que se haga el camboi se debe pasar el context
              SizedBox(height: 50),
              _textRegisterRotated(context),
              SizedBox(height: 90)
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          // height: MediaQuery.of(context).size.height * 0.93,
          // width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(left: 60, bottom: 30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 14, 29, 166),
                  Color.fromARGB(255, 30, 112, 227),
                ]),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), bottomLeft: Radius.circular(35)),
          ),
          child: Container(
            margin: EdgeInsets.only(
                top: 0, bottom: 0, left: 15, right: 15), //margen
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, //ubica los elementos en la parte izquierda
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  _textWelcome("Welcome"),
                  _textWelcome("Back..."),
                  _imageCar(),
                  _textLogin(),
                  Defaulttextfield(text: "Email", icon: Icons.email),
                  Defaulttextfield(
                      text: "Password",
                      icon: Icons.lock,
                      margin: EdgeInsets.only(
                          top: 0, left: 20, right: 0, bottom: 0)),
                  // Spacer(), //lleva todo a la parte de abajo// nunca usar un Spacer su se va a usar un SingleChildScrollView ya qeu sse genera un bucle infinito
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  DefaultButtom(
                    text: "SING IN",
                    textColor: Colors.cyan,
                  ),
                  _sepadatorOr(),
                  SizedBox(height: 10),
                  _textDontHaveAccount(context),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _textLogin() {
    return Text(
      "Log in",
      style: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  Widget _imageCar() {
    return Container(
      alignment: Alignment.centerRight,
      child: Image.asset(
        'assets/img/car_white.png',
        width: 150,
        height: 150,
      ),
    );
  }

  Widget _sepadatorOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(right: 5),
        ),
        Text(
          "O",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        Container(
          width: 20,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(left: 5),
        ),
      ],
    );
  }

  Widget _textDontHaveAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes cuenta?',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
                context, 'register'); //recibe el context y la ruta
          },
          child: Text(
            "Registrate",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        )
      ],
    );
  }

  Widget _textWelcome(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  Widget _textRegisterRotated(BuildContext context) {
    return GestureDetector(
      //para pasar entre páginas o plantillas se debe envolver el widget  y poner esta clase
      onTap: () {
        Navigator.pushNamed(context, 'register');
      }, //este es el click
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          'Registro',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  Widget _textLoginRotated() {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Login',
        style: TextStyle(
            color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
      ),
    );
  } //con _ esto se declara que es privado  no es recomendable hacer esto para: columnas, maquetación ejemplo alineaciones filas columnas stack solo para un elemento especifico
}
