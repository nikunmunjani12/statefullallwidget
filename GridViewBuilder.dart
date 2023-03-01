import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatefulWidget {
  const GridViewBuilderDemo({Key? key}) : super(key: key);

  @override
  State<GridViewBuilderDemo> createState() => _GridViewBuilderDemoState();
}

class _GridViewBuilderDemoState extends State<GridViewBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 2.5,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: 220,
                      width: 200,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          "$index",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    Text("Hello"),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
