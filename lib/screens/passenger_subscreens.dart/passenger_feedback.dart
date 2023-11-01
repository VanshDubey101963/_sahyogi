import 'package:flutter/material.dart';

class PassengerFeedbackTabPage extends StatefulWidget {
  const PassengerFeedbackTabPage({super.key});

  @override
  State<PassengerFeedbackTabPage> createState() =>
      _PassengerFeedbackTabPageState();
}

class _PassengerFeedbackTabPageState extends State<PassengerFeedbackTabPage> {
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
