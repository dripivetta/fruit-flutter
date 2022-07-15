import 'package:flutter/material.dart';

class CustomImagem extends StatelessWidget {
  const CustomImagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 350,
      height: 250,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(fit: BoxFit.fitHeight, 'assets/frutas2.jpg')),
    );
  }
}
