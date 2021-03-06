import 'package:flutter/material.dart';

class ConteoPage extends StatefulWidget {
  @override
  createState() {
    return _ConteoPageState();
  }
}

class _ConteoPageState extends State<ConteoPage> {
  final _estilo = TextStyle(fontSize: 30);
  int _conteo = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Clicks", style: _estilo),
              Text("$_conteo", style: _estilo),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                child: Icon(Icons.add),
                elevation: 10,
                onPressed: () {
                  setState(() {
                    _conteo++;
                  });
                }),
            FloatingActionButton(
                child: Icon(Icons.remove),
                elevation: 1,
                onPressed: () {
                  setState(() {
                    _conteo--;
                  });
                }),
          ],
        ));

    /*child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _conteo++;
          });
        },*/
  }
}