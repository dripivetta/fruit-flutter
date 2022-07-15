import 'package:flutter/material.dart';
import 'package:projetofruit/pages/8loginface.dart';
import 'package:projetofruit/pages/7logingoogle.dart';
import 'package:projetofruit/pages/6onboard.dart';
import 'package:projetofruit/pages/5cadastro.dart';
import 'package:projetofruit/pages/3homepage.dart';
import 'package:projetofruit/pages/1splashpage.dart';
import 'package:projetofruit/pages/2loginpage.dart';
import 'package:projetofruit/pages/singup.dart';
import 'package:projetofruit/widgets/login_page/resetpassword.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/splashpage' ,
      routes: {
        '/splashpage' : (_) => const SplashPage(),
        '/homepage' : (_) => HomePage(),
        '/cadastro' : (_) => const Cadastro(),
        '/onboard' : (_) => Onboard(),
        '/logingoogle': (_) => LoginGoogle(),
        '/loginface': (_) => LoginFace(),
        '/loginpage': (_) => LoginPage(),
        '/singup' : (_) => SingUp(),
        '/recuperar' : (_) => ResetPassword(),
      },
    );
  }
}