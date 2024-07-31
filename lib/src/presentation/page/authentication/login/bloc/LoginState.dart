import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LoginState extends Equatable {
  //se debe averiguar que variables van a cambiar de estado para saber que se pondrá aqui
  //se debe averiguar que variables y el tipo de variables en este caso como se tienen
  //dos input se tienen que tener en cuenta que las dos al llenar los campos cambian de estado

  final GlobalKey<FormState>? formkey;

  //permite trabajar con el manejo del formulario siempre se debe agregar

  final String
      email; //permite capturar las variables que el usuario pondra en esta variables
  final String password;

//se llama al constructor de login state
  const LoginState({
    this.formkey,
    this.email = '',
    this.password = '',
  });
  //agregar u nmetodo adicional para cambiar las variables este retorna una nueva instancia de la clase por defecto se llama copyWith
  LoginState copyWith({
    String? email,
    String? password,
    GlobalKey<FormState>? formkey,
  }) {
    return LoginState(
        email: email ??
            this
                .email, //con el doble ?? se valida si la variable ha llegado es decir si existe
        password: password ??
            this.password, //recordar que si el usuario no pasa alguno de los parametos se toma por defecto el this.password o email que sería el ''
        formkey: formkey //este como es opcional no es necesario pasar un valor
        );
  }

// el simbolo ? dice que es opcional
//se debe sobre escribir el props solo al teclear props saldra
  @override //aqui es donde se escriben las variables que van a cambiar de estado
  List<Object?> get props => [email, password];
}
