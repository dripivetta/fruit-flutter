// import 'package:flutter/material.dart';
// import 'package:projetofruit/controllers/1login_controller.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class ButtonEntrar extends StatelessWidget {
//   final LoginController loginController;
//   const ButtonEntrar({Key? key, required this.loginController})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           stops: [0.1, 1],
//           colors: [
//             Colors.deepOrange.shade500,
//             Colors.orange.shade400,
//           ],
//         ),
//         borderRadius: BorderRadius.all((Radius.circular(25))),
//       ),
//       child: SizedBox.expand(
//         child: TextButton(
//                   onPressed: () {
//                     loginController.auth().then((result) {
//                       if (result) {
//                         Navigator.of(context).pushReplacementNamed('/homepage');
//                       } else {
//                         Fluttertoast.showToast(
//                           msg: 'Usuário ou senha incorretos',
//                           toastLength: Toast.LENGTH_LONG,
//                           gravity: ToastGravity.CENTER,
//                           timeInSecForIosWeb: 2,
//                           backgroundColor: Colors.red.shade500,
//                           textColor: Colors.white,
//                           fontSize: 16,
//                         );
//                       }
//                     });
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 16.0),
//                         child: Text(
//                           'Entrar',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 16.0),
//                         child: Container(
//                           child: SizedBox(
//                             child: Image.asset("assets/grapes2.png"),
//                             height: 28,
//                             width: 28,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//         ),
//       );
//   }
// }
