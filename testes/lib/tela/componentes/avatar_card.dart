import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AvatarCard extends StatefulWidget {
  @override
  _AvatarCardState createState() => _AvatarCardState();
}

class _AvatarCardState extends State<AvatarCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Apelido do Fulano",
                    style: TextStyle(fontSize: 24.0),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.store,
                      ),
                      Icon(
                        Icons.store,
                      ),
                      Icon(
                        Icons.store,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
