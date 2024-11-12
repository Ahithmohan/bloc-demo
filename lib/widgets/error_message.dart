import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String msg;
  const ErrorMessage({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.error,
          color: Colors.red,
        ),
        Text(msg)
      ],
    );
  }
}
