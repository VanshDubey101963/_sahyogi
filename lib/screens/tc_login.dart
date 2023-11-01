import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sahyogi/components/tc_textfield.dart';
import 'package:sahyogi/screens/tc_screen.dart';

class TcLogin extends StatefulWidget {
  const TcLogin({super.key});
  static const String id = "/tclogin";
  @override
  State<TcLogin> createState() => _TcLoginState();
}

class _TcLoginState extends State<TcLogin> {
  TextEditingController? _idController;
  TextEditingController? _passwordController;
  FirebaseAuth? _firebaseAuth;

  @override
  void initState() {
    super.initState();
    _idController = TextEditingController();
    _passwordController = TextEditingController();
    _firebaseAuth = FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/backgroundimages/yellowlogin.png")),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'TTE/TC',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.black87),
                  ),
                  Text(
                    'LOGIN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.black87),
                  ),
                ]),
            const SizedBox(height: 70.0),
            const Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 8.0),
              child: Text(
                'Enter your ID:',
                style: TextStyle(color: Colors.black),
              ),
            ),
            TcTextField(
              controller: _idController,
              icon: Icons.person,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 8.0),
              child: Text(
                'Enter Password:',
                style: TextStyle(color: Colors.black),
              ),
            ),
            TcTextField(controller: _passwordController, icon: Icons.lock),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150.0, vertical: 25.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(0.0),
                    backgroundColor: MaterialStateProperty.all(Colors.white54),
                  ),
                  onPressed: () async {
                    try {
                      await _firebaseAuth!
                          .signInWithEmailAndPassword(
                              email:
                                  '${_idController!.text.toString()}@gmail.com',
                              password: _passwordController!.text.toString())
                          .then((value) {
                        Navigator.pushNamed(context, TcScreen.id);
                      });
                    } catch (e) {
                      throw Exception();
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
