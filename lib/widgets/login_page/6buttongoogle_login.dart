import 'package:flutter/material.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      
      child: SizedBox.expand(
        child: ElevatedButton(
          style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
        ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/logingoogle');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Login with Google',
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
                    child: Image.asset("assets/google1.png"),
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
