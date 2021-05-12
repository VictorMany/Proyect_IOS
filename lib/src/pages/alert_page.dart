import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Page')),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            child: Text('Alerta ejemplo'),
            onPressed: () => _mostrarAlert(context),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, shape: StadiumBorder()),
          ),
          ElevatedButton(
            child: Text('Alerta MiniRaza'),
            onPressed: () => _mostrarAlertMiniRaza(context),
            style: ElevatedButton.styleFrom(
                primary: Colors.purple, shape: StadiumBorder()),
          ),
        ],
      )),
    );
  }

  _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.5),
            ),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Content'),
                FlutterLogo(size: 100),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('OK')),
              FlatButton(
                child: Text('Cancel'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }

  _mostrarAlertMiniRaza(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.5),
            ),
            title: Text(
              'Atención !!',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('No has pagado la colegiatura, te vamos a dar de baja',
                    style: TextStyle(color: Colors.white)),
                Container(
                    padding: EdgeInsets.all(50.0),
                    width: 150,
                    height: 150,
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              'https://i.pinimg.com/originals/0a/ae/f8/0aaef88d8ae7e31dde8dc44b6751ad05.png')),
                      )
                    ),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage())),
                  child: Text('OK',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          color: Colors.blue))),
              FlatButton(
                child: Text('Cancelar',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                        color: Colors.blue)),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }
}
