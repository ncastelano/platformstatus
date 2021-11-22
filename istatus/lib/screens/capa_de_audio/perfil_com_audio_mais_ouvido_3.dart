import 'package:flutter/material.dart';

class PerfilComAudioMaisOuvido3 extends StatefulWidget {
  @override
  _PerfilComAudioMaisOuvido3State createState() => _PerfilComAudioMaisOuvido3State();
}

class _PerfilComAudioMaisOuvido3State extends State<PerfilComAudioMaisOuvido3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco a imagem dos audios mais ouvidos do dia
        child: Image.network(
            'https://portalpopline.com.br/wp-content/uploads/2021/07/Coldplay-2.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }
}