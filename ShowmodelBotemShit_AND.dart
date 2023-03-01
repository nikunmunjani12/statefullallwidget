import 'package:flutter/material.dart';

class ShowmodelBottemshit extends StatefulWidget {
  const ShowmodelBottemshit({Key? key}) : super(key: key);

  @override
  State<ShowmodelBottemshit> createState() => _ShowmodelBottemshitState();
}

class _ShowmodelBottemshitState extends State<ShowmodelBottemshit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    isScrollControlled: true,
                    backgroundColor: Colors.red,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 500,
                        width: 390,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                      );
                    });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
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
