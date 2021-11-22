import 'package:flutter/material.dart';

class PerfilComAudioMaisOuvido1 extends StatefulWidget {
  @override
  _PerfilComAudioMaisOuvido1State createState() => _PerfilComAudioMaisOuvido1State();
}

class _PerfilComAudioMaisOuvido1State extends State<PerfilComAudioMaisOuvido1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco a imagem dos audios mais ouvidos do dia
        child: Image.network(
            'https://imagens.brasil.elpais.com/resizer/QXuWIoiPOmUElX6xV1hhqSafh_Y=/1960x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/RQ5WS673QZHQLPQWDNWGBA7RJ4.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }
}