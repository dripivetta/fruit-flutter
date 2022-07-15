import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Column laraja() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 500,
        width: 500,
        child: Lottie.asset('assets/lottie.json'),
      )
    ],
  );
}