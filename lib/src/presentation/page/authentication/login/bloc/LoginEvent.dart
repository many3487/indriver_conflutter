abstract class LoginEvent {}

//inicializar el formulario
class LoginInitEvent extends LoginEvent {} //solo inicializa pero no recibe nada

//capturar los valores que le usuario vaya escribiendo en el  input
class EmailChanged extends LoginEvent {
  //como cambia un texto se pasa una variable de tipo string
  final String email;
  EmailChanged(
      {required this.email}); //este es el constructor y se solicita la variable como requerida
}

class PasswordChanged extends LoginEvent {
  //como cambia un texto se pasa una variable de tipo string
  final String password;
  PasswordChanged(
      {required this.password}); //este es el constructor y se solicita la variable como requerida
}

//se crea evento el cual se usará cuando se envíe la información

class FormSubmit extends LoginEvent {}
