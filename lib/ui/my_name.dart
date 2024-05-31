import 'package:flutter/material.dart';

class MyName extends StatefulWidget {
  const MyName({super.key});

  @override
  State<MyName> createState() => _MyNameState();
}

class _MyNameState extends State<MyName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Kalashov Feodor"
        ),
      ),
    );
  }
}
