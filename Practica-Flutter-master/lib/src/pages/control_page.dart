import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  @override
  createState() {
    return _ControlPageState();
  }
}

class _ControlPageState extends State < ControlPage > {
  final _estilo = TextStyle(fontSize: 30);
  int _vertical = 0;
  var texto = '';
  var orientacion = '';
  int _girar = 1;
  void validar() {
    if (_vertical > 10) {
      texto = "Esta en el limite";
      _vertical = 10;
    }
    if (_vertical < -9) {
      _vertical = -9;
      texto = "Esta en el limite";

    }
    if (_vertical > -9 && _vertical < 9) {
      texto = "";
    }
  }

  void validarGirar() {
    if (_girar > 4) {
      setState(() {
        _girar = 1;
      });
    }
    if (_girar < 1) {
      setState(() {
        _girar = 4;
      });
    }
    switch (_girar) {
      case 1:
        orientacion = "Top";
        break;
       case 2:
        orientacion = "Right";
        break;  
       case 3:
        orientacion = "Bottom";
        break;
       case 4:
        orientacion = "Left";
        break;    
              default:
   
    }
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column( //columna
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clicks", style: _estilo),
            Text("$texto", style: _estilo),
            Text("$_vertical", style: _estilo),
            Text("$orientacion", style: _estilo),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [FlatButton(child: Text("A"), onPressed: () {
                setState(() {
                  _vertical++;
                  validar();
                });
              }), ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [FlatButton(child: Text("I"), onPressed: () {
                setState(() {
                  validarGirar();
                  _girar--;
                });
              }), FlatButton(child: Text("D"), onPressed: () {
                setState(() {
                  validarGirar();
                  _girar++;
                });
              })]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [FlatButton(child: Text("Ab"), onPressed: () {
                setState(() {
                  validar();
                  _vertical--;
                });
              }), ]),
            Row()
          ],
        ),
      ));

    /*child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _conteo++;
          });
        },*/
  }
}