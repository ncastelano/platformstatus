import 'package:flutter/material.dart';

class MensagemdeError extends StatefulWidget {
  const MensagemdeError({Key? key}) : super(key: key);

  @override
  _MensagemdeErrorState createState() => _MensagemdeErrorState();
}

class _MensagemdeErrorState extends State<MensagemdeError> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
