import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:istatus/rank_semanal/top_1_semanal.dart';
import 'package:istatus/rank_semanal/top_2_semanal.dart';
import 'package:istatus/rank_semanal/top_3_semanal.dart';
import 'package:istatus/rank_semanal/top_4_semanal.dart';
import 'package:istatus/rank_semanal/top_5_semanal.dart';
import 'package:istatus/screens/telas_iniciais/rank_pessoa_semana.dart';

class OsTopsSemanal extends StatefulWidget {
  const OsTopsSemanal({Key? key}) : super(key: key);

  @override
  _OsTopsSemanalState createState() => _OsTopsSemanalState();
}

class _OsTopsSemanalState extends State<OsTopsSemanal> {

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


  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => RankPessoaSemanal()));},
        child: Column(
          children: [
            Top5Semanal(imageUrl[1]),
            Top4Semanal(imageUrl[2]),
            Top3Semanal(imageUrl[3]),
            Top2Semanal(imageUrl[4]),
            Top1Semanal(imageUrl[5]),
          ],
        ),
      ),
    );
  }
}
