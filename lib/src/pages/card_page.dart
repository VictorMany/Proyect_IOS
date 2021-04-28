import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        children: <Widget>[
          _cardt1(),
          SizedBox(height: 30),
          _cardt1(),
          SizedBox(height: 30),
          _cardt2(),
          SizedBox(height: 30),
          _cardt2(),
          SizedBox(height: 30),
          _cardt3(),
          SizedBox(height: 30),
          _cardt3(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _cardt1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.assistant_photo, color: Colors.cyanAccent),
            title: Text('Miguel Salvador Gómez Díaz'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardt2() {
    final card = Container(
        child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 300),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Text('Descripcion de la imagen en el contenedor'),
        )
      ],
    ));
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(2.0, 14.0))
          ]),
    );
  }
//Tarea
  Widget _cardt3() {
    final card = Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Column(
              children: [
                Container(
                    padding: EdgeInsets.all(50.0),
                    width: 150,
                    height: 150,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              'https://scontent.fcyw2-1.fna.fbcdn.net/v/t1.6435-9/115881538_3139837506095036_6960817569089003072_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGbeaDZ2ZbsZvSiizE-2t-CDlSKsRfbrToOVIqxF9utOkVufd1K0d7HcKbFgC1_hpCaFAmXvygmiBZC7hW2IlCR&_nc_ohc=0XEK7PZWzIcAX9xZs_A&_nc_ht=scontent.fcyw2-1.fna&oh=769ddecd52dd2f88354c0cd341b7f393&oe=609C8751')),
                    )),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nombre de la persona: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text('Felix Miguel Cardenas'),
                      Text(
                        'Oficio: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text('Estudiante de la Universidad'),
                      Text('de la Salle Bajío'),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(width: 5),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(2.0, 14.0))
          ]),
    );
  }
}
