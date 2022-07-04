import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    //método que vai inflar noss app (executar)
    MaterialApp(
      //Um widget que já vem com muitas configurações prontas
      home:
          HomePage(), //Setando que a minha home (tela inicial) será uma homePage
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  String _url1 =
      'https://static3.depositphotos.com/1001920/140/i/450/depositphotos_1400122-stock-photo-beach.jpg';
  List _url2 = [
    'https://cdn.pixabay.com/photo/2022/06/19/04/25/cat-7271017_960_720.jpg'
  ];
  void alteracaoImagem() {
    int numeroAleatorio = Random().nextInt(_url2.length);
    setState(() {
      _url1 = _url2[numeroAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Minha barra'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.network('$_url1'),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      textStyle: const TextStyle(fontSize: 40)),
                  onPressed: alteracaoImagem,
                  child: const Text('Clique aqui'),
                )
              ],
            ),
          ),
        ));
  }
}
