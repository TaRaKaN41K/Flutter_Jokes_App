import 'package:flutter/material.dart';

class ResultApi extends StatefulWidget {
  final argument;

  const ResultApi({this.argument});

  @override
  State<ResultApi> createState() => _ResultApiState();
}

class _ResultApiState extends State<ResultApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.argument.field1),
      ),
    );
  }
}
