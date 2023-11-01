import 'package:flutter/material.dart';

class TrainLiveStatusTabPage extends StatefulWidget {
  const TrainLiveStatusTabPage({super.key});

  @override
  State<TrainLiveStatusTabPage> createState() => _TrainLiveStatusTabPageState();
}

class _TrainLiveStatusTabPageState extends State<TrainLiveStatusTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
