import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/login/bloc/LoginEvent.dart';
import 'package:indriver_clone_flutter/src/presentation/page/authentication/login/bloc/LoginState.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final formkey = GlobalKey<FormState>();

  LoginBloc() : super(LoginState()) {
    on<LoginInitEvent>((event, emit) {
      //se realiza un cambio de estado con emit
      emit(state.copyWith(formkey: formkey));
      //con emit(state se accede a todos los parametros o atributos que seten dentro de la clase login state
      //cuando accedo al metodo copyWith puedo realizar los cambios de las variables
    });

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email, formkey: formkey));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password, formkey: formkey));
    });
    //se pasa formkey para controlar el formulario es para resetear el formulario
    on<FormSubmit>((event, emit) {
      print('email ${state.email}');
      print(
          'password ${state.password}'); //print me sirve para imprimir por consola
    });
  }
} // se importa LoginEvent y el estado se pueden pasar enteros pero como es un formulario se puede pasar todo el formulario
