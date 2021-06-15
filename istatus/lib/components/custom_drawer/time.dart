import 'package:flutter/material.dart';


class Time extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Container(
        color: Colors.green.shade700,
        height: 95,
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '[09:00] Gessiane ...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '[10:00] Jessé Ca...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '[14:00] Victor Rocha',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
      ),
      );
  }
}
