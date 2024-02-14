import 'package:auto_route/auto_route.dart';
import 'package:default_flutter_project/src/modules/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          //TODO:: add listeners for states
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Default Flutter Home Screen"),
              centerTitle: true,
              elevation: 0.0,
            ),
            body: const SafeArea(
              child: SingleChildScrollView(
                child: Text("This project created by Mirac Altinay"),
              ),
            ),
          );
        },
      ),
    );
  }
}
