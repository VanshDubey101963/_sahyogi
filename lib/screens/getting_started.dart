import 'package:flutter/material.dart';
import 'package:sahyogi/screens/passenger_login.dart';
import 'package:sahyogi/screens/tc_login.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({super.key});
  static const String id = "/gettingstarted";
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
              image: AssetImage("assets/backgroundimages/gettingstarted.png")),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome To',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0),
                ),
                Text(
                  'Sahyogi!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Ab SAFAR me no SUFFER!',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Let's Get Started!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Are you a Passenger or TTE/TC?",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, PassengerLogin.id);
                        },
                        style: const ButtonStyle(
                            elevation: MaterialStatePropertyAll(0.0),
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xffe6ddbc))),
                        child: const Text(
                          'PASSENGER',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, TcLogin.id);
                        },
                        style: const ButtonStyle(
                          elevation: MaterialStatePropertyAll(0.0),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xffe6ddbc)),
                        ),
                        child: const Text(
                          'TTE/TC',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
