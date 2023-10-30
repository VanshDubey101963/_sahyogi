import 'package:flutter/material.dart';

class PassengerScreen extends StatefulWidget {
  const PassengerScreen({super.key});
  static const String id = '/passengerScreen';
  @override
  State<PassengerScreen> createState() => _PassengerScreenState();
}

class _PassengerScreenState extends State<PassengerScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Passenger Screen'),
    );
  }
}
