import 'package:flutter/material.dart';

class CustomFild extends StatelessWidget {
  final Function(String) onChanged;
  final String label;
  final bool obscureText;
  final Icon? icon;
  final TextInputType board;

  const CustomFild(
      {Key? key,
      required this.onChanged,
      required this.label,
      required this.obscureText,
      required this.icon,
      required this.board})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: board,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(color: Colors.deepOrange),
        ),
        hintText: label,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: icon,
      ),
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}
