import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projetofruit/pages/3homepage.dart';
import 'package:projetofruit/pages/reusable.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {

  TextEditingController _emailTextController = TextEditingController ();
  TextEditingController _senhaTextController = TextEditingController ();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      extendBodyBehindAppBar: true, appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, title: Text('Sing Up'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepOrange.shade400,
            Colors.orange.shade400,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(child: Padding(padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0), child: Column(children: <Widget> [
          SizedBox(height: 20),
          reusableTextField("Enter Email", Icons.email_outlined, false, _emailTextController),
            SizedBox(height: 20), 
            reusableTextField("Enter Senha", Icons.email_outlined, false, _senhaTextController),
            SizedBox(height: 16),
            singInSignUpButtom(context, () {
              FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextController.text, password: _senhaTextController.text).then((value) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }).onError((error, stackTrace) {
                print('Error ${error.toString()}');
              });
              
            })
        ]),
      ),
    ),),);
  }
}