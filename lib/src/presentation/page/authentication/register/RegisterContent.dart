import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:indriver_clone_flutter/src/presentation/widgets/DefaultButtom.dart';
import 'package:indriver_clone_flutter/src/presentation/widgets/DefaulttextfieldOutlined.dart';

//stle
//este funciona para la creación de la páguna es decir para el contenido que va inmerso en la página o pantalla
class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

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
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //Horizontal
            mainAxisAlignment: MainAxisAlignment.center, //vertical
            children: [
              _textLoginRotated(context),
              SizedBox(height: 50),
              _textRegisterRotated(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              left: 60,
              bottom:
                  35), //esta margen es para que no quede sobre login y registro
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  bottomLeft: Radius.circular(35)),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 14, 29, 166),
                    Color.fromARGB(255, 30, 112, 227),
                  ])),
          child: Stack(
            children: [
              _imageBackground(context),
              SingleChildScrollView(
                //este es un widget se envuelve un widget el cual  se debe cambiar a esta propiedad para que no salga el error
                child: Column(
                  children: [
                    _imageBanner(),
                    DefaulttextfieldOutlined(
                        text: "Nombre",
                        icon: Icons.person_outline,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10)),
                    DefaulttextfieldOutlined(
                      text: "Apellido",
                      icon: Icons.person,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    ),
                    DefaulttextfieldOutlined(
                      text: "Email",
                      icon: Icons.email_outlined,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    ),
                    DefaulttextfieldOutlined(
                      text: "Número",
                      icon: Icons.phone_android_sharp,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    ),
                    DefaulttextfieldOutlined(
                      text: "Password",
                      icon: Icons.key_sharp,
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                    ),
                    DefaultButtom(
                      text: "Crear usuario",
                      onPressed: () {},
                    ),
                    _separatorOr(),
                    _textIAlreadyHaveAccount(context)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ); //el Stack sirve para poner objetos uno encima del otro
  }

  Widget _textIAlreadyHaveAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Ya tengo una cuenta ",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "login");
          },
          child: Text(
            'inicia sessión',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget _separatorOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 25,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(right: 5),
        ),
        Text(
          'O',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        Container(
          width: 25,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(right: 5),
        ),
      ],
    );
  }

  Widget _imageBackground(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter, //centrar un elemento
      margin: EdgeInsets.only(bottom: 45),
      child: Image.asset(
        'assets/img/destination.png',
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.4,
        opacity: AlwaysStoppedAnimation(0.9),
      ),
    );
  }

  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/img/trip.png',
        width: 150,
        height: 150,
      ),
    );
  }

  Widget _textLoginRotated(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "login");
        },
        child: Text(
          "Login",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  Widget _textRegisterRotated() {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        "Registro",
        style: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
