import 'package:flutter/material.dart';

import 'ComonTextFormfeild-Page__1.dart';

class Prectice extends StatefulWidget {
  const Prectice({Key? key}) : super(key: key);

  @override
  State<Prectice> createState() => _PrecticeState();
}

class _PrecticeState extends State<Prectice> {
  TextEditingController one = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CommonTextFomField(
        labelText: "nikunj",
        obscureText:  false,
        suffixIcon: Icons.add,
        controller: one,
      )),
    );
  }
}
