import 'package:bloc_application/cubit/counter_cubit.dart';
import 'package:bloc_application/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const MaterialApp(
        title: "Bloc Application",
        home: MYHome(),
      ),
    );
  }
}
