import 'package:flutter/material.dart';

class TcTextField extends StatelessWidget {
  const TcTextField({
    super.key,
    required this.controller,
    required this.icon,
  });

  final TextEditingController? controller;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 8.0),
      child: TextField(
          controller: controller,
          decoration:  InputDecoration(
              filled: true,
              fillColor: Colors.white54,
              border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Icon(
                  icon,
                  color: Colors.black,
                ),
              ))),
    );
  }
}
