import 'package:flutter/material.dart';

class CapaDeAudio1 extends StatefulWidget {
  @override
  _CapaDeAudio1State createState() => _CapaDeAudio1State();
}

class _CapaDeAudio1State extends State<CapaDeAudio1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco a imagem dos audios mais ouvidos do dia
        child: Image.network(
            'https://upload.wikimedia.org/wikipedia/pt/thumb/0/07/Stay_-_The_Kid_Laroi_e_Justin_Bieber.png/220px-Stay_-_The_Kid_Laroi_e_Justin_Bieber.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}