import 'package:flutter/material.dart';
import 'package:sahyogi/components/tc_textfield.dart';

class TcLogin extends StatefulWidget {
  const TcLogin({super.key});

  @override
  State<TcLogin> createState() => _TcLoginState();
}

class _TcLoginState extends State<TcLogin> {
  TextEditingController? _idController;
  TextEditingController? _passwordController;

  @override
  void initState() {
    super.initState();
    _idController = TextEditingController();
    _passwordController = TextEditingController();
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            TcTextField(controller: _passwordController, icon: Icons.lock)
          ],
        ),
      ),
    );
  }
}
