import 'package:flutter/material.dart';

class SoundsPage extends StatelessWidget {
  //Nombre de la clase a exportar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sounds'),
      ),
      body: Text("Bienvenido a los sonidos del silencio"),
    );
  }
}