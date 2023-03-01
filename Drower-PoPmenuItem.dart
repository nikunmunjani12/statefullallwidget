import 'package:flutter/material.dart';

class Poppopmenu extends StatefulWidget {
  const Poppopmenu({Key? key}) : super(key: key);

  @override
  State<Poppopmenu> createState() => _PoppopmenuState();
}

class _PoppopmenuState extends State<Poppopmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.green,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("viraj@gmail.com"),
              accountName: Text("Viraj"),
              currentAccountPicture: CircleAvatar(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.edit),
                  );
                },
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.more));
          },
        ),
        leadingWidth: 80,
        title: Text("WhatsApp"),
        titleSpacing: 20,
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Security"),
                ),
                PopupMenuItem(
                  child: Text("Lincked Device"),
                ),
                PopupMenuItem(
                  child: Text("Starred MAssages"),
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  child: Text("Privacy"),
                ),
              ];
            },
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
