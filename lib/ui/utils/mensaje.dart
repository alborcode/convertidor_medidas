/*
FUNCION PARA SACAR MENSAJE
*/
import 'package:flutter/material.dart';

// Al no ser nombre de clase sino de funcion por convencion va en minuscula
void mensaje(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: SizedBox(
          height: 15,
          child: Center(child: Text(text))),
    ),
  );
}
