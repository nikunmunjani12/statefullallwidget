import 'dart:async';

import 'package:flutter/material.dart';

class SecoundTimer extends StatefulWidget {
  const SecoundTimer({Key? key}) : super(key: key);

  @override
  State<SecoundTimer> createState() => _SecoundTimerState();
}

class _SecoundTimerState extends State<SecoundTimer> {
  int second = 60;
  bool isResend = false;

  void timerDemo() {
    Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
      second--;
      if (second == 0) {
        timer.cancel();
        isResend = true;
        second = 60;
        setState(() {});
      }
    });
  }

  @override
  initState() {
    timerDemo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 200),
            child: Row(
              children: [
                Text(
                  "Resend code in ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "${second}",
                  style: TextStyle(
                      color: Colors.deepOrangeAccent.shade100,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "second",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          isResend
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    isResend = false;
                    timerDemo();
                  },
                  child: Text('RESEND OTP'),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
