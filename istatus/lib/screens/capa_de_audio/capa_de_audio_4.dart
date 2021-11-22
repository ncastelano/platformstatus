import 'package:flutter/material.dart';

class CapaDeAudio4 extends StatefulWidget {
  @override
  _CapaDeAudio4State createState() => _CapaDeAudio4State();
}

class _CapaDeAudio4State extends State<CapaDeAudio4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco a imagem dos audios mais ouvidos do dia
        child: Image.network(
            'https://i2.wp.com/www.portalpopmais.com.br/wp-content/uploads/2021/09/capa-certified-lover-boy-drake.jpg?w=1086&ssl=1'),
        fit: BoxFit.fill,
      ),
    );
  }
}