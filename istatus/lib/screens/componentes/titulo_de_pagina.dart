import 'package:flutter/material.dart';

class TitulodePagina extends StatelessWidget {
  TitulodePagina({required this.label, required this.iconData, required this.onTap, required this.highlighted});


  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label, style: TextStyle(color: highlighted ? Colors.orange : Colors.black, fontWeight: FontWeight.w900),),
      leading: Icon(iconData, color: highlighted ? Colors.orange : Colors.black,),
      onTap: onTap,

    );
  }


}
