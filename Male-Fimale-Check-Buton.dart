import 'dart:ffi';

import 'package:flutter/material.dart';

class ButtonDemo extends StatefulWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  State<ButtonDemo> createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  bool isswitch = false;
  bool ischeck = false;
  int Radio1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Switch.adaptive(
          //   value: isswitch,
          //   onChanged: (value) {
          //     setState(() {
          //       isswitch = !isswitch;
          //     });
          //   },
          // ),
          Switch(
              value: isswitch,
              focusColor: Colors.red,
              activeColor: Colors.red,
              activeTrackColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  isswitch = !isswitch;
                });
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Male"),
              Radio(
                  value: 1,
                  activeColor: Colors.green,
                  groupValue: Radio1,
                  onChanged: (int? value) {
                    setState(() {});
                    Radio1 = value!;
                  }),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Female"),
            Radio(
              value: 2,
              groupValue: Radio1,
              onChanged: (int? value) {
                setState(() {});
                Radio1 = value!;
              },
            )
          ]),
          Checkbox(
            value: ischeck,
            onChanged: (value) {
              setState(() {
                ischeck = value!;
              });
            },
          ),
          SizedBox(
            height: 50,
          ),
          CircularProgressIndicator(
              // color: Colors.red,
              // backgroundColor: Colors.green,
              ),
          SizedBox(
            height: 50,
          ),
          LinearProgressIndicator(
            color: Colors.lightBlue,
            backgroundColor: Colors.red,
            minHeight: 3,
          )
        ],
      ),
    );
  }
}
