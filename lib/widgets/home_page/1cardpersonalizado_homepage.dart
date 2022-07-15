import 'package:flutter/material.dart';
import 'package:projetofruit/models/fruit.dart';
import 'package:lottie/lottie.dart';
import 'package:projetofruit/pages/4detailspage.dart';

class CardPersonalizado extends StatelessWidget {
  final Fruit fruta;

  CardPersonalizado({
    Key? key,
    required this.fruta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all((Radius.circular(16))),
        ),
        child: SizedBox.expand(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => DetailsPage(fruta: fruta),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(fruta.name.toString(),
                      style: TextStyle(fontSize: 22)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    child: SizedBox(
                      child: Lottie.asset('assets/lottie2.json'),
                      height: 28,
                      width: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
