import 'package:flutter/material.dart';
import 'package:formativa/tela2.dart';
import 'package:formativa/tela3.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();

  _login(){
    if(user.text == "dre" && senha.text == "1818") {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>tela2()));
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Usuário ou senha inválido"),
        duration: Duration(seconds: 2),)
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,//cor de fundo
        title: Text("Tela login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        ),
                        labelStyle: TextStyle(backgroundColor: Colors.white),
                        hintText: "Login",
                      ),
                      controller: user,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Senha",
                      ),
                      obscureText: true,
                      obscuringCharacter: "*",
                      controller: senha,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(onPressed: _login, child: Text("Entrar"),),
          ],
        ),
      ),
    );
  }
}