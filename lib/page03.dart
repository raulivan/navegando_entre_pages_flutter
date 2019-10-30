import 'package:flutter/material.dart';

class Tela03 extends StatefulWidget {
  @override
  _Tela03State createState() => _Tela03State();
}

class _Tela03State extends State<Tela03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 03'),
        centerTitle:  true,
      ),
      backgroundColor: Colors.green,
    );
  }
}