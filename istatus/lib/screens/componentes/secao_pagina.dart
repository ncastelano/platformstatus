import 'package:flutter/material.dart';
import 'package:istatus/screens/telas_iniciais/mochila.dart';
import 'package:istatus/screens/telas_iniciais/tela_chat.dart';
import 'package:istatus/screens/telas_iniciais/tela_dinheiro.dart';
import 'package:istatus/screens/telas_iniciais/tela_imagem.dart';
import 'package:istatus/screens/telas_iniciais/tela_live.dart';
import 'package:istatus/screens/telas_iniciais/tela_livro.dart';
import 'package:istatus/screens/telas_iniciais/tela_loja.dart';
import 'package:istatus/screens/telas_iniciais/tela_mapa.dart';
import 'package:istatus/screens/telas_iniciais/tela_musica.dart';
import 'package:istatus/screens/telas_iniciais/tela_pessoa.dart';
import 'package:istatus/screens/telas_iniciais/tela_radio.dart';
import 'package:istatus/screens/telas_iniciais/tela_video.dart';

class OpcaodePagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TelaPessoas()));
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.photo_camera,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => TelaImagem()));
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.library_music,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TelaMusica()));
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.video_collection,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => TelaVideo()));
                  }),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.menu_book,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TelaLivro()));
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.radio,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TelaRadio()));
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.live_tv,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => TelaLive()));
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.download_sharp,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Mochila()));
                  }),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TelaMapa()));
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.store,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TelaLoja()));
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.monetization_on,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => TelaDinheiro()));
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              child: IconButton(
                  padding: const EdgeInsets.all(8.0),
                  icon: Icon(
                    Icons.chat,
                    color: Colors.yellowAccent,
                    size: 70,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => TelaChat()));
                  }),
            ),
          ],
        ),
      ],
    );
  }
}


/*
*Marquee(
  text: 'Some sample text that takes some space.',
  style: TextStyle(fontWeight: FontWeight.bold),
  scrollAxis: Axis.horizontal,
  crossAxisAlignment: CrossAxisAlignment.start,
  blankSpace: 20.0,
  velocity: 100.0,
  pauseAfterRound: Duration(seconds: 1),
  startPadding: 10.0,
  accelerationDuration: Duration(seconds: 1),
  accelerationCurve: Curves.linear,
  decelerationDuration: Duration(milliseconds: 500),
  decelerationCurve: Curves.easeOut,
)
*
*
*
*
*
*
*
* */