import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {

  PageTile({this.label, this.iconData, this.onTap, this.highlighted});

  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;


  @override
  Widget build(BuildContext context) {
    return ListTile(tileColor: Colors.black,
      title: Text(

          label,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: highlighted? Colors.green.shade700: Colors.white,
          ),
      ),
      leading: Icon(
          iconData,
        color: highlighted? Colors.green.shade700: Colors.white,
      ),
      onTap: onTap,

    );
  }


}
