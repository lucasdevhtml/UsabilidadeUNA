import 'package:flutter/material.dart';

void main() {
  String nome = "Lucas";
  DateTime data = DateTime.now();

  var textSpan = TextSpan(
      text: "hoje é dia: $data",
      style: TextStyle(
        color: Colors.yellow,
      ));
  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ), //TextStyle.
          children: <TextSpan>[
            TextSpan(
              text: '$nome!',
              style: TextStyle(
                color: Colors.blue,
                backgroundColor: Colors.green,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
              ),
            ),
            TextSpan(
                text: ' \nHoje é: $data!',
                style: TextStyle(
                  color: Colors.red,
                  backgroundColor: Colors.yellow,
                )),
            TextSpan(
                text: ' \nBom dia!',
                style: TextStyle(
                  backgroundColor: Colors.white,
                ))
          ],
        ),
      ),
    ),
  );
}
