import 'package:flutter/material.dart';

class Top5Semanal extends StatefulWidget {
  Top5Semanal(imageUrl);


  @override
  _Top5SemanalState createState() => _Top5SemanalState();
}

class _Top5SemanalState extends State<Top5Semanal> {

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
              image: NetworkImage(imageUrl[5]),
              fit: BoxFit.cover,
              scale: 3.0,
            )
        ),

      ),
    );
  }
}
