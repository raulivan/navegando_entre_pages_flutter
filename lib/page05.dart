import 'package:flutter/material.dart';

class Tela05 extends StatefulWidget {
  @override
  _Tela05State createState() => _Tela05State();
}

class _Tela05State extends State<Tela05> {

  final _textoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 05'),
        centerTitle: true,
      ),
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          TextField(
            controller: _textoController,
            style: TextStyle(color: Colors.black, fontSize: 100),
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            child: Text(
              'Voltar',
              style: TextStyle(fontSize: 15),
            ),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: () {
              Navigator.pop(context,_textoController.text);
            },
          )
        ],
      )),
    );
  }
}
