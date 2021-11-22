import 'package:flutter/material.dart';

Widget favoritosChat(String imgUrl, String userName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Column(
      children: [
        CircleAvatar( radius: 30,
          //aqui vai a cor do status da pessoa
          backgroundColor: Colors.purple,
          child: CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 26.0,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          userName,
          style: TextStyle(color: Colors.black),
        ),
      ],
    ),
  );
}
