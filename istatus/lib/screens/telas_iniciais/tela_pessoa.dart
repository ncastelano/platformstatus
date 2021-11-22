import 'package:flutter/material.dart';
import 'package:istatus/rank_semanal/os_tops_semanais.dart';
import 'package:istatus/screens/componentes/menu.dart';
import 'package:istatus/screens/componentes/timeline_inicio.dart';
import 'package:istatus/screens/rank_diario/os_top_diarios.dart';

class TelaPessoas extends StatefulWidget {
  @override
  _TelaPessoasState createState() => _TelaPessoasState();
}

class _TelaPessoasState extends State<TelaPessoas> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey(); //Adicionado
  List<String> postagemdosUsuarios = [
    "system of a down - hipnotize",
    "A vida é bela!",
    "Marvel - Vingadores Ultimato 2",
    "Mecânica Dois Irmãos",
    "Loja de Artemisa",
    "Campanha Natal Solidário!",
    "oiifokspodkfpoksdpofkopskdpofkpsodkfopskdpofkposkdfpokspdofkposdkfpoksdpofkposdkfposkdpofkspodkfposkdfspdofkposkdfposkdpfkspodfkposdkfposkdfpok",
    "hello!!!",
    "eai"
  ];

  List<dynamic> imageUrl = [
    "https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/women/80.jpg",
    "https://randomuser.me/api/portraits/men/43.jpg",
    "https://randomuser.me/api/portraits/women/49.jpg",
    "https://randomuser.me/api/portraits/women/45.jpg",
    "https://randomuser.me/api/portraits/women/0.jpg",
    "https://randomuser.me/api/portraits/women/1.jpg",
    "https://randomuser.me/api/portraits/men/0.jpg"
  ];

  List<String> userName = [
    "Amanda",
    "Anderson",
    "Aurea",
    "Araujo",
    "Artic",
    "Artemisa",
    "Zuleika",
    "Wanessa",
    "Ronaldo"
  ];
  List<Widget> iconedePostagem = [
    Icon(
      Icons.headset,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.photo_camera,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.remove_red_eye,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.location_on,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.store,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.monetization_on_outlined,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.audiotrack,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.beach_access,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.audiotrack,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.beach_access,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.audiotrack,
      color: Colors.yellow,
      size: 25.0,
    ),
    Icon(
      Icons.beach_access,
      color: Colors.yellow,
      size: 25.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  //_scaffoldKey.currentState!.openDrawer();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CustomDrawer()));
                }),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
        ),
      ),
      /*
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,*/
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  OsTopsDiarios(),
                ],
              ),
              Row(
                children: [
                  OsTopsSemanal(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: MediaQuery.of(context).size.height * 0.61,
                    width: MediaQuery.of(context).size.width * 0.78,
                    child: ListView(children: [
                      //timelineinicial para testes
                      timelineInicial(imageUrl[0], userName[0], false,
                          iconedePostagem[0], postagemdosUsuarios[0]),
                      timelineInicial(imageUrl[1], userName[1], true,
                          iconedePostagem[1], postagemdosUsuarios[1]),

                      timelineInicial(imageUrl[2], userName[2], true,
                          iconedePostagem[2], postagemdosUsuarios[2]),
                      timelineInicial(imageUrl[3], userName[3], false,
                          iconedePostagem[3], postagemdosUsuarios[3]),
                      timelineInicial(imageUrl[5], userName[5], false,
                          iconedePostagem[4], postagemdosUsuarios[4]),
                      timelineInicial(imageUrl[4], userName[4], true,
                          iconedePostagem[5], postagemdosUsuarios[5]),
                      timelineInicial(imageUrl[6], userName[6], true,
                          iconedePostagem[6], postagemdosUsuarios[6]),
                      timelineInicial(imageUrl[7], userName[7], true,
                          iconedePostagem[7], postagemdosUsuarios[7]),
                    ]),
                  ),
                ],
              ),
              //Parte debaixo
              Expanded(
                child: Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('9:00 Pedro'),
                          Text('10:00 João Victor'),
                          Text('11:00 Flavio'),
                          Text('14:00 Ronaldo'),
                          Text('15:00 Eduardo'),
                          Text('16:00 Junior')
                        ],
                      ),
                      Container(

                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.all(1),
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.50,
                        color: Colors.pink,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.arrow_left_outlined,
                                  size: 50,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  size: 50,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.arrow_right,
                                  size: 50,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
