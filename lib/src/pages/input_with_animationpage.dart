import 'dart:math';

import 'package:flutter/material.dart';

class InputAnimationPage extends StatefulWidget {
  @override
  _InputAnimationPageState createState() => _InputAnimationPageState();
  

}

class _InputAnimationPageState extends State<InputAnimationPage> {
  String _nombre;
  double _width = 50.0;
  double _height = 50;
  Color _color = Colors.cyan;
  int contador = 1;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs personalizados'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _repintar(),
           Center(
          child: AnimatedContainer(
        width: _width,
        height: _height,
        decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        duration: Duration(seconds: 1),
        curve: Curves.bounceInOut
      )),
        ],
      ),
      //floatingActionButton: FloatingActionButton(
        //child: Icon(Icons.play_arrow),
        //onPressed: _cambiarForma,
      //),
    );
  }
  void _cambiarForma(valor) {
    final random = Random();
    setState((){
      _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      if (valor.length%10 == 0) {
        print(valor);
        contador++;
      }
      if (contador == 4)
      {
        print('4');
        contador = 1;
      }
      if (contador == 1)
      {
        print('1');
          _borderRadius = BorderRadius.zero;
          _width = random.nextInt(200).toDouble();
          _height = _width;
          _nombre = "Cuadrado";
      }
      if (contador == 2)
      {
        print('2');
          _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
          _width = random.nextInt(200).toDouble();
          _height = _width;
          _nombre = "Circulo";
      }
      if (contador == 3)
      {
        print('3');
        _borderRadius = BorderRadius.zero;
          _height = random.nextInt(200).toDouble();
          _width = _height * 2;
          _nombre = "Rectangulo";
      }
    });
  }
  Widget _crearInput() {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          counter: Text('Carácteres 0'),
          hintText: 'Nombre completo',
          labelText: 'Title',
          helperText: 'solo letras',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        _cambiarForma(valor);
       // setState(() {
  //        _nombre = valor;
    //    });
      },
    );
  }

  Widget _repintar() {
    return ListTile(
      title: Text('Su nombre es: $_nombre'),
    );
  }
  
}