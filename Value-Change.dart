import 'package:flutter/material.dart';

import 'Value-change-Page2.dart';

class ValueChange extends StatefulWidget {
  const ValueChange({Key? key}) : super(key: key);

  @override
  State<ValueChange> createState() => _ValueChangeState();
}

class _ValueChangeState extends State<ValueChange> {
  var selcted = GlobalKey<FormState>();
  TextEditingController one = TextEditingController();
  int? number1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Form(
              key: selcted,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      controller: one,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text(
                          "Number phone",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black12),
                        ),
                      ),
                      validator: (value) {
                        setState(() {});
                        if (value!.isEmpty) {
                          return "enter valid phone";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: InkResponse(
              onTap: () {
                if (selcted.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Page2(code: one.text), //////////////////////////////
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("invalid in phone"),
                    ),
                  );
                }
              },
              child: Container(
                height: 58,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.deepOrangeAccent.withAlpha(180),
                ),
                child: Center(
                  child: Text(
                    "SEND VIA SMS",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
