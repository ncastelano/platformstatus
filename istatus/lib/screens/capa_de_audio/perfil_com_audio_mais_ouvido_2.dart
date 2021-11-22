import 'package:flutter/material.dart';

class PerfilComAudioMaisOuvido2 extends StatefulWidget {
  @override
  _PerfilComAudioMaisOuvido2State createState() => _PerfilComAudioMaisOuvido2State();
}

class _PerfilComAudioMaisOuvido2State extends State<PerfilComAudioMaisOuvido2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco a imagem dos audios mais ouvidos do dia
        child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Ed_Sheeran-6886_%28cropped%29.jpg/200px-Ed_Sheeran-6886_%28cropped%29.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }
}