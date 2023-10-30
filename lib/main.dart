import 'package:flutter/material.dart';
import 'package:sahyogi/screens/passenger_login.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sahyogi/screens/tc_login.dart';
import 'package:sahyogi/screens/getting_started.dart';
import 'package:sahyogi/screens/passenger_screen.dart';
import 'package:sahyogi/screens/tc_screen.dart';

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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const GettingStarted(),
        routes: {
          GettingStarted.id: (context) => const GettingStarted(),
          PassengerLogin.id: (context) => const PassengerLogin(),
          TcLogin.id: (context) => const TcLogin(),
          PassengerScreen.id: (context) => const PassengerScreen(),
          TcScreen.id: (context) => const TcScreen(),
        });
  }
}
