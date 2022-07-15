import 'package:flutter/material.dart';

class ButtonFace extends StatelessWidget {
  const ButtonFace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 1],
          colors: [
            Colors.blue,
            Color(0xFF3C5A99),
          ],
        ),
        borderRadius: BorderRadius.all((Radius.circular(25))),
        color: Color(0xFF3C5A99),
      ),
      child: SizedBox.expand(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/loginface');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Entrar com Facebook',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Container(
                  child: SizedBox(
                    child: Image.asset("assets/fb-icon.png"),
                    height: 28,
                    width: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
