import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  final String quote;

  const QuoteWidget({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(9),
        child: Container(
          width: MediaQuery.of(context).size.width / 1,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Colors.amberAccent),
          child: Center(
            child: Text(quote),
          ),
        ),
      ),
    );
  }
}
