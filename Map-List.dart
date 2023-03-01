import 'package:flutter/material.dart';

class ListMap1 extends StatefulWidget {
  ListMap1({Key? key}) : super(key: key);

  @override
  State<ListMap1> createState() => _ListMap1State();
}

class _ListMap1State extends State<ListMap1> {
  List<Map<String, dynamic>> itemList = [
    {
      "pic": [
        "assets/images/tomato.png",
        "assets/images/tomato.png",
        "assets/images/tomato.png"
      ],
      "name": ["sushi", "sushi", "sushi"],
      "time": ["1", "2", "3"],
    },
    {
      "pic": [
        "assets/images/tomato.png",
        "assets/images/tomato.png",
        "assets/images/tomato.png"
      ],
      "name": ["Burgers", "Burgers", "Burgers"],
      "time": ["4", "5", "6"],
    },
    {
      "pic": [
        "assets/images/tomato.png",
        "assets/images/tomato.png",
        "assets/images/tomato.png"
      ],
      "name": ["Pizza", "Pizza", "Pizza"],
      "time": ["7", "8", "9"],
    }
  ];
  int demo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: SizedBox(
          height: 155,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      demo = value;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 155,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Center(
                            child: Container(
                              height: 140,
                              width: 100,
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                color: Colors.black12.withAlpha(20),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Image.asset(
                                    itemList[demo]["pic"][index],
                                    // itemList[index]["pic"],
                                    scale: 9,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    itemList[demo]["name"][index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    itemList[demo]["time"][index],
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 167,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: List.generate(
                    3,
                    (index) => Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor:
                              demo == index ? Colors.orange : Colors.black26,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
