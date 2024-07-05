import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/login/LoginPage.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/register/RegisterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My appppp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute:
          'login', //de esta manera se le indica cual será la página de inicio
      routes: {
        'login': (BuildContext context) =>
            LoginPage(), //de esta manera se cran las rutas
        'register': (BuildContext context) => RegisterPage(),
      },
    );
  }
}
