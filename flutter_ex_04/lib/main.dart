import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          ),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image(
              image: NetworkImage('https://picsum.photos/250?image=9'),
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Google Flutter',
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
