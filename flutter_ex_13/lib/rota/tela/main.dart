import 'package:flutter/material.dart';
import 'tela.dart';
import 'rotas.dart';
import 'package:flutter_ex_13/rota/componete/componente.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => PrimeiraTela(),
          '/segunda': (context) => SegundaTela(),
          '/terceira': (context) => TerceiraTela(),
        },
      ),
    );
