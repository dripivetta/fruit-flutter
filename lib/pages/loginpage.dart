// import 'package:flutter/material.dart';
// import 'package:projetofruit/controllers/1login_controller.dart';
// import 'package:projetofruit/widgets/login_page/5buttonface_login.dart';
// import 'package:projetofruit/widgets/login_page/7buttoncadastro_login.dart';
// import 'package:projetofruit/widgets/login_page/4buttonentrar_login.dart';
// import 'package:projetofruit/widgets/login_page/3buttonrecuperar_login.dart';
// import 'package:projetofruit/widgets/login_page/2testefild_login.dart';
// import 'package:projetofruit/widgets/login_page/6buttongoogle_login.dart';

// import '../widgets/login_page/1image_login.dart';

// class LoginPage extends StatelessWidget {
  
//   final LoginController _controller = LoginController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).backgroundColor,
//       body: Container(
//         padding: EdgeInsets.all(16),
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: ListView(
//           padding: EdgeInsets.all(16),
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 CustomImagem(),
//                 SizedBox(height: 16),
//                 CustomFild(
//                   onChanged: _controller.setEmail,
//                   label: 'Email',
//                   obscureText: false,
//                   icon: Icon(Icons.email),
//                   board: TextInputType.emailAddress,
//                 ),
//                 SizedBox(height: 8),
//                 CustomFild(
//                   onChanged: _controller.setSenha,
//                   label: 'Senha',
//                   obscureText: true,
//                   icon: Icon(Icons.lock),
//                   board: TextInputType.text,
//                 ),
//                 ButtonRecuperar(),
//                 SizedBox(height: 8),
//                 ButtonEntrar(
//                   loginController: _controller,
//                 ),
//                 SizedBox(height: 8),
//                 ButtonFace(),
//                 SizedBox(height: 8),
//                 ButtonCadastro(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }