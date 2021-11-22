import 'package:flutter/material.dart';

class PerfilComAudioMaisOuvido5 extends StatefulWidget {
  @override
  _PerfilComAudioMaisOuvido5State createState() => _PerfilComAudioMaisOuvido5State();
}

class _PerfilComAudioMaisOuvido5State extends State<PerfilComAudioMaisOuvido5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco a imagem dos audios mais ouvidos do dia
        child: Image.network(
            'https://www.vagalume.com.br/doja-cat/images/doja-cat.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }
}