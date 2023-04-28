import 'package:flutter/material.dart';
import 'dart:math';

class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {

  //back do app
  //criar um array de frases para ser exibidas de forma aleatoria
  var _frases = [
    'Dizem que beleza abre portas... obs: Faz 12 anos que não entro em casa', //array frase 0
    'Em busca de um aplicativo que me deixe bonito e rico, e não um que me transforme em desenho',// array frase 1
    'No dia das bruxas, não preciso ter o trabalho de trocar a foto de perfil!', //array frase 2
    'Minha beleza é igual a Linha do Equador. Existe, só que ninguém vê.', //array frase 3
  ];
  var _frasesgerada = 'clique abaixo para gerar uma frase!';

  void _gerarfrase(){// funcao para gerar frase aleatoria
    // numero sorteado ira pegar aleatoriamentee de 0 1 2 3

    var numerosorteado = Random().nextInt(_frases.length);

    setState(() {
      _frasesgerada = _frases[numerosorteado];
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text('Frase do dia',
          style: TextStyle(
              color: Colors.black,
              fontSize: 33,
              fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.brown,//cor do app bar
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logo.png'), // aonde vai a logo
              Text(_frasesgerada,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black87,
                fontWeight: FontWeight.bold
              ),
              ),
              ElevatedButton(
                  onPressed: _gerarfrase,
                  child: Text('Nova frase',
                  style:
                  TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                style:
                ElevatedButton.styleFrom(
                    primary: Colors.brown,
                    padding: EdgeInsets.all(20),
                    side: BorderSide(width: 2, color: Colors.black),
                    elevation: 2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              )

            ],
          ),
        ),
      ),
    ) ;
  }
}
