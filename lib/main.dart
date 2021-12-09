import 'package:cake_scheduler/providers.dart';
import 'package:cake_scheduler/routes/router.dart' as router;
import 'package:cake_scheduler/routes/routes_name.dart';
import 'package:cake_scheduler/views/Home/home.dart';
import 'package:cake_scheduler/views/Login/login.dart';
import 'package:cake_scheduler/views/Login/sign_in.dart';
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
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return MaterialApp(
          onGenerateRoute: router.Router.generateRoute,
          initialRoute: homePageRoute,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: Colors.purple[900],
              backgroundColor: Colors.pink[100],
              primaryColorLight: Colors.purple),
          home: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthInitial) {
                return Login();
              } else {}
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
