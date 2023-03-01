import 'package:flutter/material.dart';

class Comonboton extends StatefulWidget {
  final onpressed;
  final color;
  final text;
  Comonboton({Key? key, this.onpressed, this.color, this.text})
      : super(key: key);

  @override
  State<Comonboton> createState() => _ComonbotonState();
}

class _ComonbotonState extends State<Comonboton> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return MaterialButton(
      onPressed: widget.onpressed,
      color: widget.color,
      child: Text("${widget.text}"),
      minWidth: double.infinity,
    );
  }
}
