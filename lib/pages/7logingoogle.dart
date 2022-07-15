import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:projetofruit/widgets/login_page/1image.dart';

class LoginGoogle extends StatefulWidget {
  const LoginGoogle({Key? key}) : super(key: key);

  @override
  State<LoginGoogle> createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogle> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  //String userEmail = "";
  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _googleSignIn.currentUser;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Login with Google'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/loginpage', (_) => true);
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),

      //backgroundColor: Theme.of(context).backgroundColor,

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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.14, 20, 0),
            child: Column(
              children: [
                logoWidget('assets/googlepng.png'),
                SizedBox(height: 16),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),

                  child: ElevatedButton(
                      style: ButtonStyle(
                          // backgroundColor: MaterialStateProperty.all<Color>(
                          //     Color(0XFFFD5523)),
                          // shape: MaterialStateProperty.all<
                          //         RoundedRectangleBorder>(
                          //     RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(25),
                          //         side: BorderSide(color: Colors.orange)))
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                        ),
                      onPressed: () async {
                        //await signInWithGoogle();
                        await _googleSignIn.signIn();
                        setState(() {});
                        Navigator.of(context)
                            .pushReplacementNamed('/homepage');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,),
                      )),
                ),
                SizedBox(height: 16),



                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),

                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                          // backgroundColor: MaterialStateProperty.all<Color>(
                          //     Color(0XFFFD5523)),
                          // shape: MaterialStateProperty.all<
                          //         RoundedRectangleBorder>(
                          //     RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(25),
                          //         side: BorderSide(color: Colors.orange)))
                      ),
                      onPressed: () async {
                        //await GoogleSignIn().signOut();
                        await _googleSignIn.signOut();
                        setState(() {});
                      },
                      child: Text(
                        'Logout',
                        style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future<UserCredential> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;

  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );

  //   userEmail = googleUser!.email;

  //   // Once signed in, return the UserCredential
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }
}
