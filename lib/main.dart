import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TcLogin(),
    );
  }
}

class GettingStarted extends StatefulWidget {
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage("assets/backgroundimages/gettingstarted.png")
            ),
            ),
        ), 
    );    
  }
}

class PassengerLogin extends StatefulWidget {
  const PassengerLogin({super.key});

  @override
  State<PassengerLogin> createState() => _PassengerLoginState();
}

class _PassengerLoginState extends State<PassengerLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage("assets/backgroundimages/bluelogin.png")
            ),
            ),
        ), 
    );    
  }
}

class TcLogin extends StatefulWidget {
  const TcLogin({super.key});

  @override
  State<TcLogin> createState() => _TcLoginState();
}

class _TcLoginState extends State<TcLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage("assets/backgroundimages/yellowlogin.png")
            ),
            ),
        ), 
    );    
  }
}