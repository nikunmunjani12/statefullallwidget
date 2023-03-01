import 'package:flutter/material.dart';

class PageViewLike extends StatefulWidget {
  PageViewLike({Key? key}) : super(key: key);

  @override
  State<PageViewLike> createState() => _PageViewLikeState();
}

class _PageViewLikeState extends State<PageViewLike> {
  List<Map<String, dynamic>> homeimage = [
    {
      'color': Colors.tealAccent,
      'liked': true,
    },
    {
      'color': Colors.blue,
      'liked': false,
    },
    {
      'color': Colors.red,
      'liked': false,
    }
  ];
  int selected = 0;
  //PageController Home = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Column(
          children: [
            SizedBox(
              height: 320,
              child: Stack(
                children: [
                  PageView.builder(
                    //controller: Home,
                    onPageChanged: (value) {
                      setState(() {
                        selected = value;
                      });
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 300,
                        width: 390,
                        decoration:
                            BoxDecoration(color: homeimage[index]['color']),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: List.generate(
                        3,
                        (index) => Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: CircleAvatar(
                              backgroundColor: selected == index
                                  ? Colors.orange
                                  : Colors.white,
                              radius: 5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: InkResponse(
                      onTap: () {
                        setState(() {
                          homeimage[selected]['liked'] =
                              !homeimage[selected]['liked'];
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 23,
                        child: !homeimage[selected]['liked']
                            ? Icon(
                                Icons.favorite,
                                color: Colors.orange,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.orange,
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
