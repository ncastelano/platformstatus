import 'package:flutter/material.dart';
import 'package:istatus/components/custom_drawer/page_section.dart';
import 'package:istatus/components/custom_drawer/time.dart';

import 'custom_drawer_header.dart';


class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
          child: Drawer(
            child: Container (color: Colors.black,
                child: ListView(

                  children: [
                    CustomDrawerHeader(),
                    PageSection(),
                    Expanded(child: Time()),
                  ],
                )
            )
          )
      ),
    );
  }
}
