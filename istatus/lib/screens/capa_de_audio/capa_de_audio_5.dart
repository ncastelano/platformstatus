import 'package:flutter/material.dart';

class CapaDeAudio5 extends StatefulWidget {
  @override
  _CapaDeAudio5State createState() => _CapaDeAudio5State();
}

class _CapaDeAudio5State extends State<CapaDeAudio5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco a imagem dos audios mais ouvidos do dia
        child: Image.network(
            'https://celebrity.land/en/wp-content/uploads/2021/09/Drake-Gets-Theatrical-In-New-Music-Video-For-%E2%80%98Way-2.jpeg'),
        fit: BoxFit.fill,
      ),
    );
  }
}