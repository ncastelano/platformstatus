import 'package:flutter/material.dart';

class LinhadoTempo extends StatefulWidget {
  @override
  _LinhadoTempoState createState() => _LinhadoTempoState();
}

class _LinhadoTempoState extends State<LinhadoTempo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                DefaultTextStyle(style: TextStyle( color: Colors.red,
                    fontWeight: FontWeight.bold), child: Text('nome da pessoa',)),

                CircleAvatar(
                  backgroundColor: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
