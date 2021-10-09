import 'package:flutter/material.dart';

void main() {
  String nome = "breno";
  String data = "Hoje é Terça-feira";
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
 text: '$nome',
 style: TextStyle(
 color: Colors.blue,
 decoration: TextDecoration.underline,
 decorationStyle: TextDecorationStyle.double,
 ),
 ),
 TextSpan(
 text: '\n$data',
 style: TextStyle(
 color: Colors.red,
 decoration: TextDecoration.underline,
 decorationStyle: TextDecorationStyle.double,
 backgroundColor: Colors.black
 ),
 ),
 TextSpan(
 text: '! \nBom dia!',
 ),
 ],
 ),
 ),
 ),
 );
}