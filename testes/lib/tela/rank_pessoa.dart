import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testes/tela/componentes/avatar_card.dart';

class RankPessoa extends StatefulWidget {
  @override
  _RankPessoaState createState() => _RankPessoaState();
}

class _RankPessoaState extends State<RankPessoa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lista Dinâmica"),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Card(
                //aqui no futuro dará a cor a borda do card
                color: Colors.yellow,
                child: InkWell(
                  splashColor: Colors.pink,
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: AvatarCard(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
          const Divider(),
        ),
      ),
    );
  }
}