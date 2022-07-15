import 'package:flutter/material.dart';
import 'package:projetofruit/services/prefes_service.dart';
import 'package:projetofruit/widgets/login_page/1imagem_splash.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.wait([
      PrefsService.isAuth(),
      Future.delayed(Duration(seconds: 4)),
    ]).then((value) => value[0]
        ? Navigator.of(context).pushReplacementNamed('/homepage')
        : Navigator.of(context).pushReplacementNamed('/onboard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
          alignment: Alignment.center,
          child: laraja(),
        ),
      ),
    );
  }
}
