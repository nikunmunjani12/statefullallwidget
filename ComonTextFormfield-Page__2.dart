import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  final onpressed;
  final color;
  final text;
  const CommonButton({Key? key, this.onpressed, this.color, this.text})
      : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return MaterialButton(
      onPressed: widget.onpressed,
      color: widget.color,
      child: Text(
        "${widget.text}",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: height * 0.020,
        ),
      ),
      minWidth: double.infinity,
      height: height * 0.070,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
