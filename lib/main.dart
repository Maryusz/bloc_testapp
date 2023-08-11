import 'dart:math';

import 'package:bloc_testapp/home_bloc.dart';
import 'package:bloc_testapp/home_event.dart';
import 'package:bloc_testapp/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => HomeBloc(),
      child: const HomeSreen(),
    ),
  );
}

class HomeSreen extends StatefulWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  late HomeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<HomeBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Cool App")),
        body: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return Center(
                child: Text('Loading STATE ${state.props}'),
              );
            }

            if (state is UpdatePropsPressedState) {
              return Center(
                child: Column(
                  children: [
                    Text("UPDATE PROPS STATE: ${state.value}"),
                    ElevatedButton(
                      child: const Text("Send event with props"),
                      onPressed: () {
                        bloc.add(const WithPropsPressed(100));
                      },
                    ),
                    ElevatedButton(
                      child: const Text("Send event without props"),
                      onPressed: () {
                        bloc.add(const WithoutPropsPressed(200));
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          bloc.add(UpdatePropsPressed(Random().nextInt(1000)));
                        },
                        child: const Text("Update props")),
                    ElevatedButton(
                        onPressed: () {
                          bloc.add(UpdateWithoutProps(Random().nextInt(1000)));
                        },
                        child: const Text("Update without props")),
                  ],
                ),
              );
            }

            if (state is UpdateWithoutPropsState) {
              return Center(
                child: Column(
                  children: [
                    Text("UPDATE WITHOUT PROPS STATE: ${state.value}"),
                    ElevatedButton(
                      child: const Text("Send event with props"),
                      onPressed: () {
                        bloc.add(const WithPropsPressed(100));
                      },
                    ),
                    ElevatedButton(
                      child: const Text("Send event without props"),
                      onPressed: () {
                        bloc.add(const WithoutPropsPressed(200));
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          bloc.add(UpdatePropsPressed(Random().nextInt(1000)));
                        },
                        child: const Text("Update props")),
                    ElevatedButton(
                        onPressed: () {
                          bloc.add(UpdateWithoutProps(Random().nextInt(1000)));
                        },
                        child: const Text("Update without props")),
                  ],
                ),
              );
            }

            if (state is WithPropsPressedState) {
              return Center(
                child: Column(
                  children: [
                    Text("WITH PROPS STATE: ${state.value}"),
                    ElevatedButton(
                      child: const Text("Send event with props"),
                      onPressed: () {
                        bloc.add(const WithPropsPressed(100));
                      },
                    ),
                    ElevatedButton(
                      child: const Text("Send event without props"),
                      onPressed: () {
                        bloc.add(const WithoutPropsPressed(200));
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          bloc.add(UpdatePropsPressed(Random().nextInt(1000)));
                        },
                        child: const Text("Update props")),
                    ElevatedButton(
                        onPressed: () {
                          bloc.add(UpdateWithoutProps(Random().nextInt(1000)));
                        },
                        child: const Text("Update without props")),
                  ],
                ),
              );
            }

            if (state is WithoutPropsPressedState) {
              return Center(
                child: Column(
                  children: [
                    Text("Without PROPS STATE: ${state.value}"),
                    ElevatedButton(
                      child: const Text("Send event with props"),
                      onPressed: () {
                        bloc.add(const WithPropsPressed(100));
                      },
                    ),
                    ElevatedButton(
                      child: const Text("Send event without props"),
                      onPressed: () {
                        bloc.add(const WithoutPropsPressed(200));
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          bloc.add(UpdatePropsPressed(Random().nextInt(1000)));
                        },
                        child: const Text("Update props")),
                    ElevatedButton(
                        onPressed: () {
                          bloc.add(UpdateWithoutProps(Random().nextInt(1000)));
                        },
                        child: const Text("Update without props")),
                  ],
                ),
              );
            }

            return Center(
              child: Column(
                children: [
                  ElevatedButton(
                    child: const Text("Send event with props"),
                    onPressed: () {
                      bloc.add(const WithPropsPressed(100));
                    },
                  ),
                  ElevatedButton(
                    child: const Text("Send event without props"),
                    onPressed: () {
                      bloc.add(const WithoutPropsPressed(200));
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
