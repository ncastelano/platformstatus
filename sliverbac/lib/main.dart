import 'package:flutter/material.dart';
import 'package:sliverbac/Cards_para_lista.dart';
import 'package:sliverbac/vocemecimadosoutros.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class RankPessoa extends StatefulWidget {


  @override
  State<RankPessoa> createState() => _RankPessoaState();
}

class _RankPessoaState extends State<RankPessoa> {
  List<String> urls = [
    "https://jpimg.com.br/uploads/2017/04/2726251695-por-criticas-kim-kardashian-revela-que-parou-de-sorrir-para-fotos-durante-gravidez.jpg",
    "https://img.estadao.com.br/thumbs/640/resources/jpg/8/2/1549473812628.jpg",


    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Kendall_Jenner_in_2019_2.png/220px-Kendall_Jenner_in_2019_2.png",
    "https://midias.correiobraziliense.com.br/_midias/jpg/2021/06/14/beyonce-6707288.jpg",
    "https://s2.glbimg.com/NWhZNpgkAL0Ast0d69IlzxWxU7c=/607x429/smart/e.glbimg.com/og/ed/f/original/2021/09/25/kylie_vogue_73-questions-kylie-jenner.jpeg",
    "https://upload.wikimedia.org/wikipedia/pt/thumb/0/07/Stay_-_The_Kid_Laroi_e_Justin_Bieber.png/220px-Stay_-_The_Kid_Laroi_e_Justin_Bieber.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Marvel_Logo.svg/220px-Marvel_Logo.svg.png",
    "https://i0.wp.com/top10mais.org/wp-content/uploads/2015/09/warner-bros-pictures-entre-as-maiores-produtoras-de-filmes-do-mundo.jpg?w=600&ssl=1",
    "https://i1.wp.com/top10mais.org/wp-content/uploads/2015/09/The-Walt-Disney-Company-entre-as-maiores-produtoras-de-filmes-do-mundo.jpg?w=600&ssl=1",
    "https://i2.wp.com/top10mais.org/wp-content/uploads/2015/09/Universal-Pictures-entre-as-maiores-produtoras-de-filmes-do-mundo.jpg?w=600&ssl=1"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[

          SliverAppBar(
            leading: Icon(Icons.arrow_back),
            pinned: true,
            floating: true,
            expandedHeight: 450.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Expanded(
                child: Voceemcimadosoutros(
                    urls[2], "Safari Hotel", "Africa", 5),
              ),
              centerTitle: true,
              //collapseMode: CollapseMode.none,
              title: Text(
                "Mais vistos do dia!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 1000,
              mainAxisSpacing: 1000.0,
              crossAxisSpacing: 1000.0,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  //os mais vistos do dia
                  child: ListView(

                    scrollDirection: Axis.horizontal,
                    children: [
                      //Now let's add and test our first card
                      CardsparaLista(
                          urls[0], "Luxary Hotel", "Caroline", 3),
                      CardsparaLista(urls[5], "Plaza Hotel", "Italy", 4),
                      CardsparaLista(
                          urls[2], "Safari Hotel", "Africa", 5),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 1000,
              mainAxisSpacing: 1000.0,
              crossAxisSpacing: 1000.0,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  //os mais vistos do dia
                  child: ListView(

                    scrollDirection: Axis.horizontal,
                    children: [
                      //Now let's add and test our first card
                      CardsparaLista(
                          urls[0], "Luxary Hotel", "Caroline", 3),
                      CardsparaLista(urls[5], "Plaza Hotel", "Italy", 4),
                      CardsparaLista(
                          urls[2], "Safari Hotel", "Africa", 5),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 1000,
              mainAxisSpacing: 1000.0,
              crossAxisSpacing: 1000.0,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  //os mais vistos do dia
                  child: ListView(

                    scrollDirection: Axis.horizontal,
                    children: [
                      //Now let's add and test our first card
                      CardsparaLista(
                          urls[0], "Luxary Hotel", "Caroline", 3),
                      CardsparaLista(urls[5], "Plaza Hotel", "Italy", 4),
                      CardsparaLista(
                          urls[2], "Safari Hotel", "Africa", 5),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 1000,
              mainAxisSpacing: 1000.0,
              crossAxisSpacing: 1000.0,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  //os mais vistos do dia
                  child: ListView(

                    scrollDirection: Axis.horizontal,
                    children: [
                      //Now let's add and test our first card
                      CardsparaLista(
                          urls[0], "Luxary Hotel", "Caroline", 3),
                      CardsparaLista(urls[5], "Plaza Hotel", "Italy", 4),
                      CardsparaLista(
                          urls[2], "Safari Hotel", "Africa", 5),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 1000,
              mainAxisSpacing: 1000.0,
              crossAxisSpacing: 1000.0,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  //os mais vistos do dia
                  child: ListView(

                    scrollDirection: Axis.horizontal,
                    children: [
                      //Now let's add and test our first card
                      CardsparaLista(
                          urls[0], "Luxary Hotel", "Caroline", 3),
                      CardsparaLista(urls[5], "Plaza Hotel", "Italy", 4),
                      CardsparaLista(
                          urls[2], "Safari Hotel", "Africa", 5),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          /*SliverFixedExtentList(
            itemExtent: 200.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Container(
                    //os mais vistos do dia
                    child: ListView(

                      scrollDirection: Axis.horizontal,
                      children: [
                        //Now let's add and test our first card
                        CardsparaLista(
                            urls[6], "Red Hot Chili Peppers", "Californication", 3),
                        CardsparaLista(urls[4], "Alfa", "Porto Velho", 4),
                        CardsparaLista(
                            urls[1], "Safari Hotel", "Africa", 5),
                      ],
                    ),
                  ),
                );
              },
                childCount: 10,
            ),
          ),*/
        ],
      ),
    );
  }
}
