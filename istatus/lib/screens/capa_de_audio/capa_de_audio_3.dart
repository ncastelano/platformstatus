import 'package:flutter/material.dart';

class CapaDeAudio3 extends StatefulWidget {
  @override
  _CapaDeAudio3State createState() => _CapaDeAudio3State();
}

class _CapaDeAudio3State extends State<CapaDeAudio3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco a imagem dos audios mais ouvidos do dia
        child: Image.network(
            'https://www.portalpopcyber.com/wp-content/webp-express/webp-images/uploads/2021/07/lil-nas-x-industry-baby-cover-tgj-1536x1536.jpg.webp'),
        fit: BoxFit.fill,
      ),
    );
  }
}