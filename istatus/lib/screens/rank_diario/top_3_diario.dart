import 'package:flutter/material.dart';

class Top3diario extends StatefulWidget {
  Top3diario(imageUrl);


  @override
  _Top3diarioState createState() => _Top3diarioState();
}

class _Top3diarioState extends State<Top3diario> {

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
    return Padding(
      padding: EdgeInsets.all(1.1),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.19 ,
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl[3]),
              fit: BoxFit.cover,
              scale: 3.0,
            )
        ),

      ),
    );
  }
}
