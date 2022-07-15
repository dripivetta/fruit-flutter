import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projetofruit/models/fruit.dart';

class DetailsPage extends StatelessWidget {
  final Fruit fruta;
  const DetailsPage({Key? key, required this.fruta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      //title: Text(fruta.name.toString(),)
      body: SingleChildScrollView(
        child: Container(
          //width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepOrange.shade400,
                Colors.orange.shade400,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      padding:
                          EdgeInsets.only(top: size.height * 0.12, left: 16),
                      //height: 500,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.85),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 11, bottom: 24),
                                child: Text(
                                  'Nutrition Information ',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      padding: EdgeInsets.all(2.5),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          shape: BoxShape.circle),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Carbohydrates: ' +
                                      fruta.nutritions!.carbohydrates
                                          .toString(), style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.grey.shade700),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      padding: EdgeInsets.all(2.5),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          shape: BoxShape.circle),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Protein: ' +
                                      fruta.nutritions!.protein.toString(), style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.grey.shade700),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      padding: EdgeInsets.all(2.5),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          shape: BoxShape.circle),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Fat: ' + fruta.nutritions!.fat.toString(), style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.grey.shade700),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      padding: EdgeInsets.all(2.5),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          shape: BoxShape.circle),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Calories: ' +
                                      fruta.nutritions!.calories.toString(), style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.grey.shade700),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      padding: EdgeInsets.all(2.5),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          shape: BoxShape.circle),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Sugar: ' +
                                      fruta.nutritions!.sugar.toString(), style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.grey.shade700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fruta.name.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Genus: ' + fruta.genus.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Family: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    TextSpan(
                                      text: fruta.family.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Image.asset(
                                  'assets/fruits.png.png',
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
