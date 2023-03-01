import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key, this.code}) : super(key: key);
  final code;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 150),
            child: Center(
              child: Text(
                "+${widget.code}",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
