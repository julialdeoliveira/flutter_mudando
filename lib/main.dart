import 'dart:html';

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
  String _url1 = 'https://static3.depositphotos.com/1001920/140/i/450/depositphotos_1400122-stock-photo-beach.jpg';
  List _url2 = ['https://super.abril.com.br/wp-content/uploads/2018/05/filhotes-de-cachorro-alcanc3a7am-o-c3a1pice-de-fofura-com-8-semanas1.png , https://blog.cobasi.com.br/wp-content/uploads/2020/07/boston-terrier-capa1.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha barra'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network('$_url1'),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 40)),
              onPressed: () {
                print('Fui clicado');
              },
              child: const Text('Clique aqui'),
            )
          ],
        ),
      ),
    );
  }
}
