import 'package:flutter/material.dart';

import 'package:testes/tela/componentes/customizacao_cabecalho_drawer.dart';
import 'package:testes/tela/componentes/opcao_de_pagina.dart';


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
