import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

class LoginFace extends StatefulWidget {
  const LoginFace({Key? key}) : super(key: key);

  @override
  State<LoginFace> createState() => _LoginFaceState();
}

class _LoginFaceState extends State<LoginFace> {

  String userEmail = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/loginpage', (_) => true);
            },
            icon: Icon(Icons.logout),
          )
        ],
        title: Text('Login com Facebook'),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.only(top: 32, left: 16, right: 16),
            width: 350,
            height: 250,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(fit: BoxFit.fitHeight, 'assets/facebook.jpg')),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              width: double.maxFinite,
              height: 40,
              child: SizedBox.expand(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0XFFFD5523)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    side: BorderSide(color: Colors.orange)))),
                    onPressed: () async {
                      await signInWithFacebook();
                      setState(() {});
                      //Navigator.of(context).pushReplacementNamed('/homepage');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32, left: 32, right: 32),
            child: Container(
              width: double.maxFinite,
              height: 40,
              child: SizedBox.expand(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0XFFFD5523)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    side: BorderSide(color: Colors.orange)))),
                    onPressed: () async {
                      signInWithFacebook();
                      await FirebaseAuth.instance.signOut();
                      userEmail = '';
                      setState(() {});
                    },
                    child: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

//   Future<UserCredential?> signInWithFacebook() async {
//      final LoginResult loginResult = await FacebookAuth.instance
//          .login(permissions: ['email', 'public-profile']);

//    if (loginResult.status == LoginStatus.success) {
//      final AccessToken accessToken = loginResult.accessToken!;
//      final OAuthCredential credential =
//          FacebookAuthProvider.credential(accessToken.token);
//      try {
//        return await FirebaseAuth.instance.signInWithCredential(credential);
//      } on FirebaseAuthException catch (e) {
//        // manage Firebase authentication exceptions
//      } catch (e) {
//        // manage other exceptions
//      }
//    } else {
//      // login was not successful, for example user cancelled the process
//    }
//  }

   Future<UserCredential> signInWithFacebook() async {
     //ADICIONA O FLUXO AO LOGIN
     final LoginResult loginResult = await FacebookAuth.instance
         .login(permissions: ['email', 'public-profile', 'user_birthday']);

     // CRIAR UMA CREDENCIAL DO TOKEN DE ACESSO
     final OAuthCredential facebookAuthCredential =
         FacebookAuthProvider.credential(loginResult.accessToken!.token);

     final userData = await FacebookAuth.instance.getUserData();

     userEmail = userData['email'];

     // UMA VEZ CONECTADO DEVOLVA A USERCREDENCIAL
     return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
   }
}
