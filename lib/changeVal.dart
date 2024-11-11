import 'package:bloc_application/bloc/counter_bloc.dart';
import 'package:bloc_application/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Changeval extends StatelessWidget {
  const Changeval({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Change Value"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterBloc.add(CounterIncremented());
          // counterState.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
