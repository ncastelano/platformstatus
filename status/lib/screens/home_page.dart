
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:status/adjust/adjusts.dart';
import 'package:status/schedule/schedule_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String urlProfile =
      'https://upload.wikimedia.org/wikipedia/commons/3/3e/Serj_Tankian_in_Artsakh_%28cropped%29.jpg';
  String nameProfile = 'Serj Tankian';
  String nameWidgetSchedule = 'compromissos';
  String nameWidgetChat = 'conversas';

  @override
  Widget build(BuildContext context) {
    var appBar = CurvedNavigationBar(
        backgroundColor: Colors.black26,
        color: colorPage,
        items: [
          Icon(
            Icons.add,
            color: colorTextLink,
          ),
          Icon(
            Icons.apps,
            color: colorTextLink,
          ),
          Icon(
            Icons.search,
            color: colorTextLink,
          ),
        ]);
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: appBar,
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.amber.shade100,
                      Colors.black26,
                    ])),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //card de avatar para settings ou mudancas de perfil
                  Card(
                    color: colorPage,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        //width: 2,
                        color: colorTextLink,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(urlProfile),
                                fit: BoxFit.cover,
                                scale: 1.0,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(nameProfile),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                          child: Icon(
                            Icons.more_vert,
                            color: colorTextLink,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Agendador

                  Expanded(
                    child: Card(
                      color: colorPage,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          color: colorTextLink,
                        ),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Column(


                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.access_time,
                                  color: colorText,
                                  size: 25.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(nameWidgetSchedule),
                              )
                            ],
                          ),
                          Divider(
                            color: colorDivider,
                          ),
                          Expanded(
                            child: ListView.separated(
                              scrollDirection: Axis.vertical,
                              padding: const EdgeInsets.all(8),
                              itemBuilder: (context, index) {
                                Schedule schedule = listSchedule[index];
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
// um teste
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Text(
                                              schedule.date,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: colorText,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Text(
                                              schedule
                                                  .profileNameOrLocationName,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: colorText,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (_, __) => Divider(
                                color: colorDivider,
                              ),
                              itemCount: listSchedule.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // conversas
                  Expanded(
                    child: Card(
                      color: colorPage,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          color: colorTextLink,
                        ),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Column(


                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.chat,
                                  color: colorText,
                                  size: 25.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(nameWidgetChat),
                              )
                            ],
                          ),
                          Divider(
                            color: colorDivider,
                          ),
                          Expanded(
                            child: ListView.separated(
                              scrollDirection: Axis.vertical,
                              padding: const EdgeInsets.all(8),
                              itemBuilder: (context, index) {
                                Schedule schedule = listSchedule[index];
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Text(
                                              schedule.date,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: colorText,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Text(
                                              schedule
                                                  .profileNameOrLocationName,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: colorText,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (_, __) => Divider(
                                color: colorDivider,
                              ),
                              itemCount: listSchedule.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: colorPage,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          color: colorTextLink,
                        ),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Column(


                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.access_time,
                                  color: colorText,
                                  size: 25.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(nameWidgetSchedule),
                              )
                            ],
                          ),
                          Divider(
                            color: colorDivider,
                          ),
                          Expanded(
                            child: ListView.separated(
                              scrollDirection: Axis.vertical,
                              padding: const EdgeInsets.all(8),
                              itemBuilder: (context, index) {
                                Schedule schedule = listSchedule[index];
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Text(
                                              schedule.date,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: colorText,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Text(
                                              schedule
                                                  .profileNameOrLocationName,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: colorText,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (_, __) => Divider(
                                color: colorDivider,
                              ),
                              itemCount: listSchedule.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )),
    );
  }
}
