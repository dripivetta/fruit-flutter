import 'package:flutter/material.dart';
import 'package:projetofruit/pages/singup.dart';

class ButtonCadastro extends StatelessWidget {
  const ButtonCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: TextButton(
        onPressed: () {
          Navigator.push(
                context, MaterialPageRoute(builder: (context) => SingUp()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have account? ", style: TextStyle(color: Colors.white),
            ),
            Text('Sign Up', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
