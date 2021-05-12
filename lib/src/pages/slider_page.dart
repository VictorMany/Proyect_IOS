import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 250.00;
  bool _bloquearCheck = false;
  bool _bloquearSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Divider(),
            _crearCheck(),
            Divider(),
            _crearImagen(),
            Divider(),
            _crearSwitch()
                      ],
                    ),
                  ),
                );
              }
            
              Widget _crearSlider() {
                return Slider(
                  activeColor: Colors.indigo,
                  label: 'Tamaño de la imagen',
                  //divisions: 20,
                  value: _valorSlider,
                  min: 0.0,
                  max: 500.0,
                  onChanged: (_bloquearSwitch)
                      ? null
                      : (valor) {
                          setState(() {
                            _valorSlider = valor;
                          });
                        },
                );
              }
            
              Widget _crearCheck() {
                /*return Checkbox(
                    value: _bloquearCheck,
                    onChanged: (valor) {
                      _bloquearCheck = valor;
                    });*/
            
                    return CheckboxListTile(title: Text('Bloquear Slider'), value: _bloquearCheck, onChanged: (valor){
                      setState(() {
                        _bloquearCheck = valor;
                      });
                    })
              }
            
              Widget _crearImagen() {
                return Image(
                    width: _valorSlider,
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/d0/a6/3e/d0a63ea0c03beed8ef57b10c71d9ab3b.jpg'));
              }
            
              Widget _crearSwitch() {
                return SwitchListTile(title: Text('Habilitar Slider'), value: _bloquearSwitch, onChanged: (valor){
                  setState(() {
                  _bloquearSwitch=valor;
                  });
                });
              }
}
