import 'package:flutter/material.dart';

//aqui se reciben parametros para estos stales widgest en este caso, estos son los inputs
class DefaulttextfieldOutlined extends StatelessWidget {
  String text;
  IconData icon;
  EdgeInsetsGeometry margin;

  DefaulttextfieldOutlined(
      {required this.text,
      required this.icon,
      this.margin = const EdgeInsets.only(bottom: 10, top: 10, left: 20)});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: margin,
      decoration: BoxDecoration(
          // color: Color.fromRGBO(255, 255, 255, 0.5),
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(15), bottomRight: Radius.circular(15))
          ),
      child: TextFormField(
        decoration: InputDecoration(
            label: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
            // border: InputBorder.none,

            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 35, 161, 183),
                    width:
                        1)), //este se usa cuando el usuario selecciona el campo
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              // color: Color.fromARGB(255, 34, 101, 202),
              color: Colors.white, //color del borde
              width: 1,
            )), //esta es la linea que se muestra de este color
            prefixIcon: Container(
              //contenedor del icono
              margin: EdgeInsets.only(top: 10),
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  Icon(icon, color: Colors.white //color del icono
                      ),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  )
                ],
              ),
            ) //icono de email a mano izquierda
            ),
      ),
    );
  }
}
