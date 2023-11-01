import 'package:flutter/material.dart';

class ConnectWithTcTabPage extends StatefulWidget {
  const ConnectWithTcTabPage({super.key});

  @override
  State<ConnectWithTcTabPage> createState() => _ConnectWithTcTabPageState();
}

class _ConnectWithTcTabPageState extends State<ConnectWithTcTabPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgroundimages/bluelogin.png'),
            fit: BoxFit.fill
          )
        ),
      )
    );
  }
}
