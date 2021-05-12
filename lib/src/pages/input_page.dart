import 'package:flutter/material.dart';
import 'package:intl/intl.dart'

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _pass = '';
  String _fecha = '';

  List <String> _oficios = ['Carpintero','Zapatero','electricista','Herrero','Vendedor'];

  String _opcionPreselect = 'Carpintero';

  TextEditingController _inputFieldDateController = new TextEditingController();

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
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearLista(),
                    Divider(),
                    _repintar()
                  ],
                ),
              );
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
                  setState(() {
                    _nombre = valor;
                  });
                },
              );
            }
          
            Widget _repintar() {
              return ListTile(
                title: Text('Su nombre es: $_nombre'),
              );
            }
          
            Widget _crearEmail() {
              return TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'email',
                  labelText: 'email',
                  suffixIcon: Icon(Icons.alternate_email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                ),
                onChanged: (valor) => setState(() {
                  _email = valor;
                }),
              );
            }
          
            Widget _crearPassword() {
              return TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'pass',
                  labelText: 'pass',
                  suffixIcon: Icon(Icons.lock_open),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                ),
                onChanged: (valor) => setState(() {
                  _pass = valor;
                }),
              );
            }
          
            Widget _crearFecha(BuildContext context) {
              return TextFormField(
                  controller: _inputFieldDateController,
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                      hintText: 'Fecha de nacimiento',
                      labelText: 'Fecha',
                      suffixIcon: Icon(Icons.perm_contact_calendar),
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                      icon: Icon(Icons.calendar_today)),
                  onTap: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                    _selectFecha(context);
                  });
            }
          
            void _selectFecha(BuildContext context) async {
              DateTime picker = await showDatePicker(
                  context: context,
                  initialDate: new DateTime.now(),
                  firstDate: new DateTime(2017),
                  lastDate: new DateTime(2030));
              if (picker != null) {
                setState(() {
                  _fecha = DateFormat('dd/mm/yyyy').format(picker).toString();
                  _inputFieldDateController.text = _fecha;
                });
              }
            }
          
          List <DropdownMenuItem<String>> getOpciones(){
             List <DropdownMenuItem<String>> lista = new List();
             _oficios.forEach((oficio) {
               lista.add(DropdownMenuItem(value: oficio, child: Text(oficio)));
             });
             return lista;
          }

         Widget  _crearLista() {
              return Row(children: <Widget>[
                Icon(Icons.select_all),
                SizedBox(width: 30.0),
                Expanded(child: DropdownButton(
                  value: _opcionPreselect,
                  items: getOpciones(),
                  onChanged: (opt){
                    setState((){
                      _opcionPreselect = opt;
                    });
                  }
                ),)
              ]);
            }
           
}
