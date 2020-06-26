import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  List _imagens = [
    "images/pedra.png",
    "images/papel.png",
    "images/tesoura.png"
  ];

  int numero_sorteado;

  void escolhe_jogada() {
    numero_sorteado = Random().nextInt(_imagens.length);
    print("teste Numero sorteado: " + numero_sorteado.toString());
    print("teste Jogada do computador: " + _imagens.elementAt(numero_sorteado));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //IMAGEM PADRAO
          GestureDetector(
            onTap: escolhe_jogada,
//            onTap: (){ print("Imagem clicada");},
//            onDoubleTap: (){ print("Imagem clicada 2 vezes");},
//            onLongPress: (){ print("Imagem clicada de forma longa");},
            child: Image.asset("images/padrao.png"),
          ),


          //TEXTO DO RESULTADO
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Resultado:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha uma opção abaixo:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("images/pedra.png", height: 100,),
              Image.asset("images/papel.png", height: 100,),
              Image.asset("images/tesoura.png", height: 100,),
            ],
          ),
        ],
      ),
    );
  }
}