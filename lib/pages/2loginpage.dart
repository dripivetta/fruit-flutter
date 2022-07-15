import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:projetofruit/controllers/1login_controller.dart';
import 'package:projetofruit/widgets/login_page/1image.dart';
import 'package:projetofruit/widgets/login_page/1image_login.dart';
import 'package:projetofruit/widgets/login_page/7buttoncadastro_login.dart';
import 'package:projetofruit/widgets/login_page/3buttonrecuperar_login.dart';
import 'package:projetofruit/widgets/login_page/6buttongoogle_login.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final controller = LoginController(
    onSuccessLogin: () {
      Navigator.of(context).pushReplacementNamed('/homepage');
    },
    onUpdate: () {
      setState(() {});
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).backgroundColor,
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
                20, MediaQuery.of(context).size.height * 0.14, 20, 0),
            child: Form(
              key: controller.formkey,
              child: Column(children: [
                logoWidget('assets/logo1.png'),
                SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => controller.validateEmail(value),
                  onSaved: (value) => controller.email = value,
                  cursorColor: Colors.white,
                  style: TextStyle (color: Colors.white.withOpacity(0.9)),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Enter email',
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                    fillColor: Colors.white.withOpacity(0.3),
                    filled: true,
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  obscureText: true,
                  validator: (value) => controller.validateSenha(value),
                  onSaved: (value) => controller.senha = value,
                  cursorColor: Colors.white,
                  style: TextStyle (color: Colors.white.withOpacity(0.9)),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Enter senha',
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                    fillColor: Colors.white.withOpacity(0.3),
                    filled: true,
                    prefixIcon: Icon(Icons.lock_outline,),
                  ),
                ),
                ButtonRecuperar(),
                SizedBox(height: 8),
                if (controller.isLoading)
                  CircularProgressIndicator()
                else
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(90)),
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                        ),
                        onPressed: () {
                          if (controller.validate()) {
                            controller.login();
                          } else {
                            Fluttertoast.showToast(
                              msg: 'Usuário ou senha incorretos',
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 2,
                              backgroundColor: Colors.red.shade500,
                              textColor: Colors.white,
                              fontSize: 16,
                            );
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Login',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ButtonGoogle(),
                ButtonCadastro(),
              ]),
            ),
          ),
        ),
      ),
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
