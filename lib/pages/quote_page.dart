import 'package:bloc_demo/bloc/quote_bloc.dart';
import 'package:bloc_demo/widgets/custom_button.dart';
import 'package:bloc_demo/widgets/error_message.dart';
import 'package:bloc_demo/widgets/quote_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bloc Demo",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Center(
              child: BlocBuilder<QuoteBloc, QuoteState>(
                builder: (context, state) {
                  if (state is QuoteInitial) {
                    return const Text("Your Quote Is Waiting...!");
                  } else if (state is QuoteStateLoading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.deepPurpleAccent,
                      ),
                    );
                  } else if (state is QuoteStateLoaded) {
                    return QuoteWidget(quote: state.quote);
                  } else if (state is QuoteStateError) {
                    return ErrorMessage(msg: state.msg);
                  }
                  return ErrorMessage(msg: "Some error occurred");
                },
              ),
            )),
            const CustomButton()
          ],
        ),
      ),
    );
  }
}
