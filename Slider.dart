import 'package:flutter/material.dart';

class Slider1 extends StatefulWidget {
  Slider1({Key? key}) : super(key: key);

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  double home = 0;
  double one = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderTheme(
            data: SliderThemeData(
              valueIndicatorColor: Colors.transparent,
              activeTrackColor: Colors.red,
              valueIndicatorTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              inactiveTrackColor: Colors.green,
              thumbColor: Colors.black,
              activeTickMarkColor: Colors.transparent,
              inactiveTickMarkColor: Colors.transparent,
              trackHeight: 15,
              overlayColor: Colors.blue,
            ),
            child: Slider.adaptive(
              value: home,
              min: 0,
              max: 100,
              divisions: 50,
              label: "€${home.toStringAsFixed(1)}",
              onChanged: (value) {
                setState(() {});
                home = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
