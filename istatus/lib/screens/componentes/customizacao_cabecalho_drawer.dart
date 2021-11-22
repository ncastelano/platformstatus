import 'package:flutter/material.dart';
import 'package:istatus/screens/telas_iniciais/tela_de_login.dart';

class CustomizacaoCabecalhodrawer extends StatefulWidget {

  @override
  _CustomizacaoCabecalhodrawerState createState() => _CustomizacaoCabecalhodrawerState();
}

class _CustomizacaoCabecalhodrawerState extends State<CustomizacaoCabecalhodrawer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => TeladeLogin()));
      },
      child: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height * 0.51,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(Icons.person, color: Colors.orange, size: 35,),
            const SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('acesse sua conta agora!',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text('clique aqui',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
