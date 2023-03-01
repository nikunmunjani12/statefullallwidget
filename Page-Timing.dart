import 'dart:async';

import 'package:flutter/material.dart';

import 'Card-Widget.dart';

class Timenig extends StatefulWidget {
  Timenig({Key? key}) : super(key: key);

  @override
  State<Timenig> createState() => _TimenigState();
}

class _TimenigState extends State<Timenig>{
  // initState() {
  //   Timer(
  //     Duration(seconds: 3),
  //     () => Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => Cardhomewidget(),
  //       ),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("nikunj"),
      ),
    );
  }
}
