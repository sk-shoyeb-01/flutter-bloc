import 'package:bloc_application/changeVal.dart';
import 'package:bloc_application/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MYHome extends StatefulWidget {
  const MYHome({super.key});

  @override
  State<MYHome> createState() => _MYHomeState();
}

class _MYHomeState extends State<MYHome> {
  @override
  Widget build(BuildContext context) {
    final counterState = BlocProvider.of<CounterCubit>(context);

    return BlocBuilder<CounterCubit, int>(
        bloc: counterState,
        builder: (context, counter) {
          return Scaffold(
              appBar: AppBar(
                title: const Text("Bloc App"),
              ),
              body: Center(
                child: Column(
                  children: [
                    const Text("The latest counter"),
                    Text("$counter")
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Changeval(),
                    ),
                  );
                },
                child: const Icon(Icons.arrow_circle_right),
              ));
        });
  }
}
