import 'package:flutter/material.dart';
import 'package:formativa/tela3.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class tela2 extends StatefulWidget {
  const tela2({super.key});

  @override
  State<tela2> createState() => _tela2State();
}

class _tela2State extends State<tela2> {
  TextEditingController id = TextEditingController();
  TextEditingController nome = TextEditingController();
  TextEditingController valor = TextEditingController();
  String url = "http://10.109.83.25:3000/formativa";

  _post(){
    Map<String,dynamic> produto_a= {
     "id":"${id.text}",
     "nome":"${nome.text}",
     "valor":"${valor.text}"
    };

    http.post(
    Uri.parse(url),
    headers: <String,String>{
      'Content-type':'application/json; charset=UTF-8',
    },
    body: jsonEncode(produto_a),
    //body: jsonEncode(mensagem), // jsonEncode formata a mensagem no formato json para envio
   );
   print("Post: ${produto_a}");
   Navigator.push(context, MaterialPageRoute(builder: (context)=>tela3("${id.text}","${nome.text}","${valor.text}")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,//cor de fundo
        title: Text("Tela novo produto"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 350,
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Digite o id do produto"),
                    controller: id,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Digite o nome do produto"),
                    controller: nome,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Digite o valor do produto"),
                    controller: valor,
                  ),               
                ],
              ),
            ),
            ElevatedButton(onPressed: _post, child: Text("Cadastrar produto"),)  
          ],
        ),
      ),
    );
  }
}
  
