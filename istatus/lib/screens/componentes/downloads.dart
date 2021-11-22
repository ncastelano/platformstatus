import 'package:flutter/material.dart';
import 'package:istatus/screens/componentes/menu.dart';
import 'package:istatus/screens/telas_iniciais/rank_pessoa.dart';
import 'package:istatus/screens/telas_iniciais/rank_pessoa_semana.dart';


class Downloads extends StatefulWidget {


  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey(); //Adicionado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellowAccent,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => Menu()
                  //   )
                  // );
                }
            ),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {}
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: () {
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //aqui fica o RankPessoa
            ClipRect(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RankPessoa()));
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.brown[100],
                      child: Text('Rank diário 1'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.green[200],
                      child: Text('Rank diário 2'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.green[400],
                      child: Text('Rank diário 3'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.green[600],
                      child: Text('Rank diário 4'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.green[900],
                      child: Text('Rank diário 5'),
                    ),
                  ],
                ),
              ),
            ),
            //aqui fica o RankTotal
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => RankPessoaSemanal()));
              },
              child: Row(
                children: [
                  Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.blue[100],
                        child: Text('Rank semanal 6'),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.blue[200],
                        child: Text('Rank semanal 7'),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.blue[400],
                        child: Text('Rank semanal 8'),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.blue[600],
                        child: Text('Rank semanal 9'),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.blue[900],
                        child: Text('Rank semanal 10'),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.60,
                        width: MediaQuery.of(context).size.width * 0.80,
                        color: Colors.red,
                        child: Text('TIME LINE'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Parte debaixo
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.17,
              width: MediaQuery.of(context).size.width * 1,
              child: Text('Ultimos downloads'),
            )
          ],
        ),
      ),
    );
  }
}