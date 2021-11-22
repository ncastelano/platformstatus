import 'package:flutter/material.dart';

class PerfilMaisVistoDaSemana1 extends StatefulWidget {
  @override
  _PerfilMaisVistoDaSemana1State createState() => _PerfilMaisVistoDaSemana1State();
}

class _PerfilMaisVistoDaSemana1State extends State<PerfilMaisVistoDaSemana1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        //Aqui estaremos colocando o endereco dos avatares
        child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Marvel_Logo.svg/220px-Marvel_Logo.svg.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}













/*
class Avatar extends StatefulWidget {

  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
    "https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/women/80.jpg",
    "https://randomuser.me/api/portraits/men/43.jpg",
    "https://randomuser.me/api/portraits/women/49.jpg",
    "https://randomuser.me/api/portraits/women/45.jpg",
    "https://randomuser.me/api/portraits/women/0.jpg",
    "https://randomuser.me/api/portraits/women/1.jpg",
    "https://randomuser.me/api/portraits/men/0.jpg"}
  @override
  Widget build(BuildContext context) {

    return CircleAvatar(
      backgroundColor: Colors.red,
      radius: 35,
      child: avatarFoto(imageUrl[1]
      ),

    );
  }

}


Widget avatarFoto(String imgUrl
    ){
  return InkWell(
    onTap: (){},
    child: CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(imgUrl),
    ),
  );
}*/