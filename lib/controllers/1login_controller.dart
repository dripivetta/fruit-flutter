//import 'package:projetofruit/services/prefes_service.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginController {
  // String? _email;
  // setEmail(String value) => _email = value;

  // String? _senha;
  // setSenha(String value) => _senha = value;

  // Future<bool> auth() async {
  //   if (_email == 'adm@hotmail.com' && _senha == 'teste') {
  //     PrefsService.save(_email!);
  //     return true;
  //   }
  //   return false;
  // }

  String? email;
  String? senha;
  final formkey = GlobalKey<FormState>();
  var _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    onUpdate;
  }

  final VoidCallback onSuccessLogin;
  final VoidCallback onUpdate;

  LoginController({required this.onSuccessLogin, required this.onUpdate});

  void login() async {
    isLoading = true;
    final response = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: senha!);
    isLoading = false;
    if (response.user != null) {
      onSuccessLogin();
    }
  }

  bool validate() {
    final form = formkey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  String? validateEmail(String? email) => email = null;
    //email != null && email.length > 0 ? null : '';

  String? validateSenha(String? senha) => 
      senha != null && senha.length >= 6 ? null : '';
      
  bool validateLogin({required String email, required String senha}) {
    return true;
  }
}
