import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projetofruit/controllers/api.dart';
import 'package:projetofruit/pages/searchbar.dart';
import 'package:projetofruit/widgets/home_page/1cardpersonalizado_homepage.dart';
import 'package:projetofruit/controllers/2api_controller.dart';
import 'package:projetofruit/services/prefes_service.dart';

import '../models/fruit.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Fruit> list = [];

  @override
  void initState() {
    super.initState();
    _getfruits();
  }

  void _getfruits() async {
    list = await APIcontroller().callAPI();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Text('Frutas'),
        actions: [
          IconButton(
            onPressed: () async {
              showSearch(context: context, delegate: SearchFruit());
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () async {
              //PrefsService.logout();
              await FirebaseAuth.instance.signOut().then((value) {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/loginpage', (context) => true);
              });
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (_, idx) => CardPersonalizado(fruta: list[idx]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
