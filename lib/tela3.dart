import 'package:flutter/material.dart';

class tela3 extends StatefulWidget {
  String id;
  String nome;
  String valor;
  tela3(this.id, this.nome, this.valor);

  @override
  State<tela3> createState() => _tela3State();
}

class _tela3State extends State<tela3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,//cor de fundo
        title: Text("Tela vizualizar POST"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Produto cadastrado",style: TextStyle(fontSize: 30),)
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text("Id: ${widget.id}",style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text("Nome: ${widget.nome}",style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text("Valor: ${widget.valor}",style: TextStyle(fontSize: 25),),
            )
          ],
        ),
      ),
    );
  }
}