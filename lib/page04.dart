import 'package:exemplo_navegacao/page05.dart';
import 'package:flutter/material.dart';

class Tela04 extends StatefulWidget {
  @override
  _Tela04State createState() => _Tela04State();
}

class _Tela04State extends State<Tela04> {
  var texto = "<Sem Valor>";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tela 04'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () async {
                var retorno = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Tela05()));
                setState(() {
                  texto = retorno;
                });
              },
            )
          ],
        ),
        backgroundColor: Colors.red,
        body: Text(
          texto,
          style: TextStyle(fontSize: 100),
        ));
  }
}
