import 'package:cake_scheduler/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/bloc/auth_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [...providerList],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  AuthBloc authBloc;

  @override
  void initState() {
    // BlocProvider.of<AuthBloc>(context);

    authBloc = BlocProvider.of<AuthBloc>(context)..add(InitialAuthEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: const Color(0xff0251ff),
          ),
          home: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthInitial) {
                return Scaffold(
                  backgroundColor: Colors.pink[100],
                );
              }
              return Scaffold(
                backgroundColor: Colors.blue[500],
              );
            },
          ),
        );
      },
    );
  }
}
