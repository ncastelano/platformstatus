import 'package:flutter/material.dart';

class CapaDeAudio2 extends StatefulWidget {
  @override
  _CapaDeAudio2State createState() => _CapaDeAudio2State();
}

class _CapaDeAudio2State extends State<CapaDeAudio2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco a imagem dos audios mais ouvidos do dia
        child: Image.network(
            'https://i2.wp.com/ytimg.googleusercontent.com/vi/4w1WpckT6-M/mqdefault.jpg?resize=500,500'),
        fit: BoxFit.fill,
      ),
    );
  }
}