import 'package:flutter/material.dart';

Widget TopoDaListaDiario(
    String imgUrl, String hotelName, String location, int rating) {
  return InkWell(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(

        border: Border(
          bottom: BorderSide(width: 80.0,
            color: Color.fromARGB(0xFF, 0xFF, 0x0, 0xA1),),
        ),
        image: DecorationImage(
          image: NetworkImage(imgUrl),
          fit: BoxFit.cover,
          scale: 2.0,
        ),
      ),
      width: 170.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              children: [
                //mudar para valores fracionados para uma melhor colocacão de status
                for (var i = 0; i < rating; i++)
                  Icon(
                    Icons.star,
                    color: Colors.pink,
                  ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    hotelName,
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
