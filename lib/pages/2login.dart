import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:projetofruit/pages/3homepage.dart';
import 'package:projetofruit/pages/reusable.dart';
import 'package:projetofruit/pages/singup.dart';
import 'package:projetofruit/widgets/login_page/1image.dart';
import 'package:projetofruit/widgets/login_page/1image_login.dart';
import 'package:projetofruit/widgets/login_page/7buttoncadastro_login.dart';
import 'package:projetofruit/widgets/login_page/3buttonrecuperar_login.dart';
import 'package:projetofruit/widgets/login_page/6buttongoogle_login.dart';

class LoginPage3 extends StatefulWidget {
  @override
  State<LoginPage3> createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _senhaTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrange.shade400,
              Colors.orange.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.13, 20, 0),
            child: Column(children: <Widget>[
              logoWidget('assets/logo1.png'),
              SizedBox(height: 8),
              reusableTextField("Enter Username", Icons.email_outlined, false,
                  _emailTextController),
              SizedBox(height: 8),
              reusableTextField("Enter Username", Icons.lock_outlined, true,
                  _senhaTextController),
              ButtonRecuperar(),
              SizedBox(height: 8),
              singInSignUpButtom(context, () {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _senhaTextController.text)
                    .then((value) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                });
              }),
              ButtonGoogle(),
              ButtonCadastro(),
            ]),
          ),
        ),
      ),
    );
  }

  Row singUpOption2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have account?"),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SingUp()));
          },
        )
      ],
    );
  }
}

Row singUpOption() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Don't have account? ",
        style: TextStyle(color: Colors.black),
      ),
      GestureDetector(
        onTap: () {},
        child: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}
