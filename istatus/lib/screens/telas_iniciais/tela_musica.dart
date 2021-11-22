import 'package:flutter/material.dart';
import 'package:istatus/screens/capa_de_audio/capa_de_audio_1.dart';
import 'package:istatus/screens/capa_de_audio/capa_de_audio_2.dart';
import 'package:istatus/screens/capa_de_audio/capa_de_audio_3.dart';
import 'package:istatus/screens/capa_de_audio/capa_de_audio_4.dart';
import 'package:istatus/screens/capa_de_audio/capa_de_audio_5.dart';
import 'package:istatus/screens/capa_de_audio/perfil_com_audio_mais_ouvido_1.dart';
import 'package:istatus/screens/capa_de_audio/perfil_com_audio_mais_ouvido_2.dart';
import 'package:istatus/screens/capa_de_audio/perfil_com_audio_mais_ouvido_3.dart';
import 'package:istatus/screens/capa_de_audio/perfil_com_audio_mais_ouvido_4.dart';
import 'package:istatus/screens/capa_de_audio/perfil_com_audio_mais_ouvido_5.dart';
import 'package:istatus/screens/componentes/menu.dart';


class TelaMusica extends StatefulWidget {
  @override
  _TelaMusicaState createState() => _TelaMusicaState();
}

class _TelaMusicaState extends State<TelaMusica> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey(); //Adicionado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellowAccent,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  //_scaffoldKey.currentState!.openDrawer();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CustomDrawer()));
                }
            ),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {}
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: () {
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //aqui fica o RankPessoa
            ClipRect(
              child: GestureDetector(
                onTap: () {
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.brown[100],
                      child: CapaDeAudio1(),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.green[200],
                      child: CapaDeAudio2(),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.green[400],
                      child: CapaDeAudio3(),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.green[600],
                      child: CapaDeAudio4(),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.green[900],
                      child: CapaDeAudio5(),
                    ),
                  ],
                ),
              ),
            ),
            //aqui fica o RankTotal
            GestureDetector(
              onTap: () {
              },
              child: Row(
                children: [
                  Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.blue[100],
                        child: PerfilComAudioMaisOuvido1(),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.blue[200],
                        child: PerfilComAudioMaisOuvido2(),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.blue[400],
                        child: PerfilComAudioMaisOuvido3(),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.blue[600],
                        child: PerfilComAudioMaisOuvido4(),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.blue[900],
                        child: PerfilComAudioMaisOuvido5(),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.60,
                        width: MediaQuery.of(context).size.width * 0.80,
                        color: Colors.red,
                        child: Text('TIME LINE'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Parte debaixo
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.17,
              width: MediaQuery.of(context).size.width * 1,
              child: Text('Ultima musicas ouvidas'),
            )
          ],
        ),
      ),
    );
  }
}