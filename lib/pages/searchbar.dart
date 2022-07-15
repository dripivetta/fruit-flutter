import 'package:flutter/material.dart';
import 'package:projetofruit/controllers/api.dart';
import 'package:projetofruit/models/fruit.dart';
import 'package:projetofruit/pages/4detailspage.dart';
import 'package:projetofruit/widgets/home_page/1cardpersonalizado_homepage.dart';

class SearchFruit extends SearchDelegate<String> {
  late List<Fruit> list = [];
  
  
  

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    FechFruit _fruit = FechFruit();
    

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
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
      child: FutureBuilder<List<Fruit>>(
        future: _fruit.getFruitList(query: query),
        builder: (context, snapshot) {
          var data = snapshot.data;
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: data?.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all((Radius.circular(32))),
                  ),
                  child: SizedBox(
                    child: TextButton(
                      onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (_) => DetailsPage(fruta: data![index]),
                            ),
                         );
                      },
                      child: Text('${data?[index].name}', style: TextStyle(fontSize: 22)),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search fruits'),
    );
  }
}
