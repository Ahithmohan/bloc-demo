import 'package:bloc_demo/bloc/quote_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        BlocProvider.of<QuoteBloc>(context).add(QuoteRequestEvent());
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(9),
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Colors.deepPurpleAccent),
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
                child: Text(
              "Generate",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
