import 'package:flutter/material.dart';

class Listtle extends StatefulWidget {
  const Listtle({Key? key}) : super(key: key);

  @override
  State<Listtle> createState() => _ListtileState();
}

class _ListtileState extends State<Listtle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Column(
              children: List.generate(
                4,
                (index) => Column(
                  children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textColor: Colors.red,
                      focusColor: Colors.green,
                      tileColor: Colors.lightBlueAccent,
                      iconColor: Colors.yellow,
                      leading: Icon(Icons.account_circle),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("hello"), Text("nikunj")],
                      ),
                      trailing: Container(
                        height: 20,
                        width: 20,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: List.generate(
                4,
                (index) => Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.account_circle,
                      ),
                      title: Text(
                        "hello world",
                      ),
                      trailing: Container(
                        height: 30,
                        width: 30,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
