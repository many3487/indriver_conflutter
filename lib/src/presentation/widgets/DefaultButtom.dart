import 'package:flutter/material.dart';

//para invocar o crear un widget se debe escibir stless y el el checkbox
class DefaultButtom extends StatelessWidget {
  Function() onPressed;
  String text;
  Color color;
  Color textColor;

  DefaultButtom(
      {required this.text,
      required this.onPressed,
      this.color = Colors.white,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      alignment: Alignment.center, //alineación del botón
      margin: EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: ElevatedButton.styleFrom(backgroundColor: color),
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 17, fontWeight: FontWeight.bold),
          )),
    );
  }
}
