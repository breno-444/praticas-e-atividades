import 'package:flutter/material.dart';
import 'rota/rota.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => PrimeiraRota(),
          '/segunda': (context) => SegundaRota(),
        },
      ),
    );
