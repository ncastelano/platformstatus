import 'package:flutter/material.dart';

class PerfilComAudioMaisOuvido4 extends StatefulWidget {
  @override
  _PerfilComAudioMaisOuvido4State createState() => _PerfilComAudioMaisOuvido4State();
}

class _PerfilComAudioMaisOuvido4State extends State<PerfilComAudioMaisOuvido4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco a imagem dos audios mais ouvidos do dia
        child: Image.network(
            'https://upload.wikimedia.org/wikipedia/pt/thumb/c/c1/The_Weeknd_-_After_Hours.png/220px-The_Weeknd_-_After_Hours.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}