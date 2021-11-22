import 'package:flutter/material.dart';

class PerfilComImagemMaisVista1 extends StatefulWidget {
  @override
  _PerfilComImagemMaisVista1State createState() => _PerfilComImagemMaisVista1State();
}

class _PerfilComImagemMaisVista1State extends State<PerfilComImagemMaisVista1> {
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