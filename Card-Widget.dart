import 'dart:async';

import 'package:flutter/material.dart';

class Cardhomewidget extends StatelessWidget {
  Cardhomewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 200),
            child: Container(
              height: 200,
              width: 200,
              child: Card(
                shadowColor: Colors.green,
                color: Colors.yellowAccent.shade100,
                elevation: 10,
                child: Center(
                  child: Text(
                    "Card",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
