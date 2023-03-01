import 'dart:ffi';

import 'package:flutter/material.dart';

class Transectiondetails extends StatefulWidget {
  Transectiondetails({Key? key}) : super(key: key);

  @override
  State<Transectiondetails> createState() => _TransectiondetailsState();
}

class _TransectiondetailsState extends State<Transectiondetails> {
  List<double> money = [
    05,
    10,
    15,
    20,
    50,
    100,
    500,
    1000,
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "${money[selected].toDouble().toStringAsFixed(0)}",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: SliderTheme(
                data: SliderThemeData(
                    trackHeight: 6,
                    disabledThumbColor: Colors.black,
                    inactiveTrackColor: Colors.white,
                    inactiveTickMarkColor: Colors.white,
                    activeTickMarkColor: Color(0xffff897e),
                    activeTrackColor: Color(0xffff897e),
                    valueIndicatorColor: Colors.white,
                    thumbColor: Color(0xffff897e)),
                child: Slider.adaptive(
                    min: 1,
                    max: 1000,
                    divisions: 100,
                    value: money[selected].toDouble(),
                    onChanged: (value) {
                      setState(() {
                        money[selected] = value;
                      });
                    }),
              ),
            ),
            SizedBox(
              height: 210,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return InkResponse(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            color: selected == index
                                ? Colors.deepOrangeAccent.shade100
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                                color: selected == index
                                    ? Colors.deepOrangeAccent.shade100
                                    : Colors.grey)),
                        child: Center(
                          child: Text(
                            "\$${money[index].toDouble().toStringAsFixed(0)}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
