import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/login/LoginContent.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //aqui se prealizan cambios de estado como por ejemplo algo que va en aumento
  @override
  Widget build(BuildContext context) {
    //aqui es la parte que verá el usuario
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 24, 181, 254),
        body: LoginContent());
  }
}
