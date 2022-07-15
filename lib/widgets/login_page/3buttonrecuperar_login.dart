import 'package:flutter/material.dart';

class ButtonRecuperar extends StatelessWidget {
  const ButtonRecuperar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/recuperar');
        },
        child: Text(
          'Reset password',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
