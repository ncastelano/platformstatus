import 'package:flutter/material.dart';

class Carregando extends StatefulWidget {
  @override
  _CarregandoState createState() => _CarregandoState();
}

class _CarregandoState extends State<Carregando> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
              //Aqui estaremos colocando o endereco dos avatares
              child: Image.network(
                  'https://files.fm/thumb_show.php?i=ejwjn6bpc'),
              fit: BoxFit.fill,
            );
  }
}
