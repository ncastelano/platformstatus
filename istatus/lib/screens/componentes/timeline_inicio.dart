
import 'package:flutter/material.dart';


Widget timelineInicial(String imgUrl, String userName, bool online,
    Widget iconedePostagem, String postagemdosUsuarios) {
  return InkWell(
    onTap: (){},
    splashColor: Colors.yellowAccent,
    child: Ink(
      color: Colors.white,
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /*
          CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 30,
            child: CircleAvatar(
              backgroundImage: NetworkImage(imgUrl),
              radius: 26.0,
            ),
          ),*/
          //aqui fica a foto e a questão de estar online ou não
          GestureDetector(
            onTap: (){},
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                if (online)
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                  ),
                if (!online)
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                  ),
                Container(
                  width: 70,
                  height: 70,
                  child: Ink(
                    child: FittedBox(
                      //Aqui fica o link das fotos da timelineinicial
                      child: Image.network(imgUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        userName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    //Text(date),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Row(
                          children: [
                            //aqui fica o tipo da postagem mostrado por um icone
                            iconedePostagem,
                            SizedBox(
                              width: 8.0,
                            ),
                            Flexible(
                              child: Text(

                                //aqui fica o nome da postagem
                                postagemdosUsuarios,
                                overflow: TextOverflow.visible,
                                maxLines: 1,
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  

}


