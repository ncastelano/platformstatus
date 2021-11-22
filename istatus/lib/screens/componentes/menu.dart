import 'package:flutter/material.dart';

import 'package:istatus/screens/componentes/customizacao_cabecalho_drawer.dart';
import 'package:istatus/screens/componentes/secao_pagina.dart';


class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          CustomizacaoCabecalhodrawer(),
          OpcaodePagina(),

        ],
      ),
    );
  }
}
