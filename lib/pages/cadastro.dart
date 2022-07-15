// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class Cadastro2 extends StatefulWidget {
//   const Cadastro2({Key? key}) : super(key: key);

//   @override
//   State<Cadastro2> createState() => _Cadastro2State();
// }

// class _Cadastro2State extends State<Cadastro2> {
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _senhaController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).backgroundColor,
//       appBar: AppBar(
//         title: Text('Cadastro'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
              
//               onChanged: _emailController,
//               decoration: InputDecoration(
//                 icon: Icon(Icons.email) ,
//                 labelText: 'email', 
//                 label: Text('Email'),
//               ),
//               obscureText: false,
          
             
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
              
//               onChanged: _senhaController,
//               decoration: InputDecoration(
//                 icon: Icon(Icons.email) ,
//                 labelText: 'email', 
//                 label: Text('Email'),
//               ),
//               obscureText: false,
          
             
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SizedBox(
//               width: double.maxFinite,
//               height: 40,
//               child: ElevatedButton(
//                 onPressed: () {
                  
//                 },
//                 child: Text('Criar conta'),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SizedBox(
//               width: double.maxFinite,
//               height: 40,
//               child: ElevatedButton(
//                 onPressed: () {
//                   FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text, password: _senhaController.text),
//                   Navigator.of(context).pushReplacementNamed('/loginpage');
//                 },
//                 child: Text('Já tem conta? Fazer Login'),
//               ),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }
