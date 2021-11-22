import 'package:flutter/material.dart';

class Carregando extends StatefulWidget {
  @override
  _CarregandoState createState() => _CarregandoState();
}

class _CarregandoState extends State<Carregando> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 250,
              ),
              Image(
                  height:
                  MediaQuery.of(context).size.height > 800 ? 191.0 : 150,
                  fit: BoxFit.fill,
                  image: const AssetImage('assets/logo.png')),
            ],
          ),
        ),
      ),
    );
  }
}
