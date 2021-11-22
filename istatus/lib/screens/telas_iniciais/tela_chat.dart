import 'package:flutter/material.dart';
import 'package:istatus/screens/componentes/favoritos_do_chat.dart';
import 'package:istatus/screens/componentes/menu.dart';
import 'package:istatus/screens/componentes/timeline_chat.dart';




class TelaChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConversaseNotificacoes(),
    );
  }
}

class ConversaseNotificacoes extends StatefulWidget {
  @override
  _ConversaseNotificacoesState createState() => _ConversaseNotificacoesState();
}

class _ConversaseNotificacoesState extends State<ConversaseNotificacoes> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey(); //Adicionado
  //Adding the main color of the app
  Color mainColor = Color(0xFF177767);
  var containerRadius = Radius.circular(30.0);
  //Adding a list of image URL to simulate the avatar picture
  List<dynamic> imageUrl = [
    "https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/women/80.jpg",
    "https://randomuser.me/api/portraits/men/43.jpg",
    "https://randomuser.me/api/portraits/women/49.jpg",
    "https://randomuser.me/api/portraits/women/45.jpg",
    "https://randomuser.me/api/portraits/women/0.jpg",
    "https://randomuser.me/api/portraits/women/1.jpg",
    "https://randomuser.me/api/portraits/men/0.jpg"
  ];
  List<String> userName = [
    "Mulher1",
    "homem2",
    "mulher3",
    "homem4",
    "mulher5",
    "mulher6",
    "mulher7",
    "mulher8",
    "homem9"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: CustomDrawer(),
        backgroundColor: Colors.transparent,
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
            backgroundColor: Colors.lightGreen,
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.yellow, Colors.yellow],
            ),
          ),
          child: Column(
            children: [
              //Coluna dos favoritos
              Container(
                height: 100.0,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //teste dos favoritos
                      favoritosChat(imageUrl[0], "Davie yo"),
                      favoritosChat(imageUrl[1], "Jack Brell"),
                      favoritosChat(imageUrl[2], "Anjie wo"),
                      favoritosChat(imageUrl[3], "Joseph "),
                      favoritosChat(imageUrl[4], "Juline kujo"),
                      favoritosChat(imageUrl[5], "Juline kujo"),
                      favoritosChat(imageUrl[6], "Juline kujo"),
                    ],
                  ),
                ),
              ),

              //Now let's create our chat timeline
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: containerRadius, topRight: containerRadius),
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                    child: ListView(
                      children: [
                        //Now let's create our chat tile custom widget
                        timelineChat(imageUrl[0], userName[0], "msg", "9Am", false),
                        timelineChat(imageUrl[1], userName[1], "msg", "8Am", true),


                        timelineChat(imageUrl[2], userName[2], "msg", "6Am", true),
                        timelineChat(
                            imageUrl[3], userName[3], "msg", "Yesterday", false),
                        timelineChat(
                            imageUrl[4], userName[4], "msg", "Yesterday", false),
                        timelineChat(imageUrl[5], userName[5], "msg", "San 20", true),
                        timelineChat(imageUrl[6], userName[6], "msg", "San20", true),
                        timelineChat(imageUrl[7], userName[7], "msg", "San20", true),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

