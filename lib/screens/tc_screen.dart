import 'package:flutter/material.dart';

class TcScreen extends StatefulWidget {
  const TcScreen({super.key});
  static const String id = '/TcScreen';
  @override
  State<TcScreen> createState() => _TcScreenState();
}

class _TcScreenState extends State<TcScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Tc Screen')),
    );
  }
}
