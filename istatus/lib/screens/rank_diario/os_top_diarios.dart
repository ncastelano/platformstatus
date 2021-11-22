import 'package:flutter/material.dart';
import 'package:istatus/screens/rank_diario/top_1_diario.dart';
import 'package:istatus/screens/rank_diario/top_2_diario.dart';
import 'package:istatus/screens/rank_diario/top_3_diario.dart';
import 'package:istatus/screens/rank_diario/top_4_diario.dart';
import 'package:istatus/screens/rank_diario/top_5_diario.dart';
import 'package:istatus/screens/telas_iniciais/rank_pessoa.dart';


class OsTopsDiarios extends StatefulWidget {
  const OsTopsDiarios({Key? key}) : super(key: key);

  @override
  _OsTopsDiariosState createState() => _OsTopsDiariosState();
}

class _OsTopsDiariosState extends State<OsTopsDiarios> {

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
    return Container(
      color: Colors.black,
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => RankPessoa()));},
        child: Row(
          children: [
            Top1diario(imageUrl[1]),
            Top2diario(imageUrl[2]),
            Top3diario(imageUrl[3]),
            Top4diario(imageUrl[4]),
            Top5diario(imageUrl[5]),
          ],
        ),
      ),
    );
  }
}
