import 'package:flutter/material.dart';
import 'package:istatus/screens/componentes/customizacao_cabecalho_drawer.dart';
import 'package:istatus/screens/componentes/secao_pagina.dart';


class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomizacaoCabecalhodrawer(),
          SizedBox(width: 100,),
          OpcaodePagina(),


        ],
      ),
    );
  }
}
