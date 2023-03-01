// import 'package:flutter/material.dart';
//
// class TextFormFieldDemo extends StatefulWidget {
//   const TextFormFieldDemo({Key? key}) : super(key: key);
//
//   @override
//   State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
// }
//
// class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
//   TextEditingController controller = TextEditingController();
//   //var and final
//   var formKey = GlobalKey<FormState>();
//   var username = "deep@gmail.com";
//   var pass = "deep@123";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25),
//         child: Form(
//           key: formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextFormField(
//                 controller: controller,
//                 validator: (value) {
//                   setState(() {});
//                   bool emailValid = RegExp(
//                           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                       .hasMatch(value!);
//                   if (emailValid) {
//                     return null;
//                   } else {
//                     return "Email is required";
//                   }
//                 },
//                 decoration: InputDecoration(
//                   hintText: "Email",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               MaterialButton(
//                 onPressed: () {
//                   if (formKey.currentState!.validate()) {
//                     if (username == controller.text) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => Center(
//                             child: Text("Hello"),
//                           ),
//                         ),
//                       );
//                     } else {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text("Invalid Credential"),
//                         ),
//                       );
//                     }
//                   }
//                 },
//                 height: 50,
//                 minWidth: 300,
//                 color: Colors.indigo,
//                 child: Text(
//                   "Press",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  TextEditingController one = TextEditingController();
  TextEditingController two = TextEditingController();
  var home = GlobalKey<FormState>();
  var username = "nikunj@gmail.com";
  var pass = "Abc@12345";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
            key: home,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
              child: Column(
                children: [
                  TextFormField(
                    controller: one,
                    decoration: InputDecoration(
                      hintText: "username",
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      setState(() {});
                      bool emailvalid = RegExp(
                              "^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if (emailvalid) {
                        return null;
                      } else {
                        return "invalid email id";
                      }
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: two,
                    decoration: InputDecoration(
                      hintText: "password",
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      setState(() {});
                      bool passvalid = RegExp(
                              "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$")
                          .hasMatch(value!);
                      if (passvalid) {
                        return null;
                      } else {
                        return "invalid password";
                      }
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                      if (home.currentState!.validate()) {
                        if (username == one.text && pass == two.text) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Center(
                                child: Text(
                                  (" nikunj"),
                                ),
                              ),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("invalis "),
                            ),
                          );
                        }
                      }
                    },
                    child: Text(
                      "Enter",
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
