import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/login/LoginPage.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/login/bloc/LoginBloc.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/login/bloc/LoginEvent.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/register/RegisterPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //si en algún caso no aparece el bloc provider se debe instalar bloc como extension de aqui, se debe importar bloc
      create: (context) => LoginBloc()..add(LoginInitEvent()),
      child: MaterialApp(
        title: 'My appppp',
        debugShowCheckedModeBanner:
            false, //con esto quito la cinta roja que aparece amano superior derecha
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
      ),
    );
  }
}
