import 'package:flutter/material.dart';

//aqui se reciben parametros para estos stales widgest en este caso, estos son los inputs
class Defaulttextfield extends StatelessWidget {
  String text;
  IconData icon;
  EdgeInsetsGeometry margin;

  Defaulttextfield(
      {required this.text,
      required this.icon,
      this.margin = const EdgeInsets.only(bottom: 10, top: 10, left: 20)});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: margin,
      decoration: BoxDecoration(//este es el input
          // color: Colors.white,
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(15), bottomRight: Radius.circular(15))
          ),
      child: TextFormField(
        decoration: InputDecoration(
            label: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
            // border: InputBorder.none,//quitar el
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            prefixIcon: Container(
              margin: EdgeInsets.only(top: 10),
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  Icon(icon, color: Colors.white),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.grey,
                  )
                ],
              ),
            ) //icono de email a mano izquierda
            ),
      ),
    );
  }
}
