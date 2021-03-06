import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estilo = new TextStyle(fontSize: 30);
  int conteo = 100;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aqui va el título'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('clicks',style: estilo),
              Text('$conteo',style: estilo),
            ],
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('le apretaste');
        },
      ),
    );
  }
}