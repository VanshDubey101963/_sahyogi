import 'package:flutter/material.dart';

class PassengerLogin extends StatefulWidget {
  const PassengerLogin({super.key});
  static const String id = "/passengerlogin";
  @override
  State<PassengerLogin> createState() => _PassengerLoginState();
}

class _PassengerLoginState extends State<PassengerLogin> {
  TextEditingController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/backgroundimages/bluelogin.png")),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'PASSENGER',
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
              ],
            ),
            const SizedBox(height: 70.0),
            const Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 8.0),
              child: Text('Enter PNR Number:'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 8.0),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white54,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150.0, vertical: 25.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(0.0),
                    backgroundColor: MaterialStateProperty.all(Colors.white54),
                  ),
                  onPressed: () {
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
