import 'package:exemplo_navegacao/page02.dart';
import 'package:exemplo_navegacao/page03.dart';
import 'package:exemplo_navegacao/page04.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de navegação'),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<int>(
              itemBuilder: (context) => <PopupMenuEntry<int>>[
                    const PopupMenuItem<int>(
                      child: Text('Tela 02'),
                      value: 1,
                    ),
                    const PopupMenuItem<int>(
                      child: Text('Tela 03'),
                      value: 2,
                    ),
                    const PopupMenuItem<int>(
                      child: Text('Tela 04'),
                      value: 3,
                    ),
                  ],
              onSelected: (item) {
                switch (item) {
                  case 1:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new Tela02()));
                    break;
                  case 2:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new Tela03()));
                    break;
                  case 3:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new Tela04()));
                    break;
                }
              }),
        ],
      ),
    );
  }
}
