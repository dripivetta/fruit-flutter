import 'package:flutter/material.dart';
import 'package:projetofruit/controllers/3cadastro_controller.dart';
import 'package:projetofruit/widgets/login_page/2testefild_login.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  CadastroController _controller = CadastroController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomFild(
              onChanged: _controller.setEmail,
              label: 'Email',
              obscureText: false,
              icon: null,
              board: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomFild(
              onChanged: _controller.setSenha,
              label: 'Senha',
              obscureText: true,
              icon: null,
              board: TextInputType.text,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Criar conta'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/loginpage');
                },
                child: Text('Já tem conta? Fazer Login'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
