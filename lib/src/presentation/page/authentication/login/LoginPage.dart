import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/login/LoginContent.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/login/bloc/LoginBloc.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/login/bloc/LoginState.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //aqui se prealizan cambios de estado como por ejemplo algo que va en aumento
  LoginBloc? _bloc; //instanciar el login
  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<LoginBloc>(
        context); //sepone la clase que maneja el block
    //aqui es la parte que verá el usuario
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 24, 181, 254),
        body: BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return LoginContent(_bloc);
      },
    )); // con esto se pasa el _bloc como parametro
  }
}
