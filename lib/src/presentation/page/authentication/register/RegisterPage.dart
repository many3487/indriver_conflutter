import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/register/RegisterContent.dart';

//recordat que para crear la estructura es  con stful
//el stateful widget es para la página principal para que retorne algo que sera un widget
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    //siempte llamar el contenido dentro de un Scaffold
    return Scaffold(
      body: RegisterContent(),
    );
  }
}
