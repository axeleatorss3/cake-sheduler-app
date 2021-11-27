import 'package:cake_scheduler/blocs/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final providerList = [
  BlocProvider<AuthBloc>(
    create: (context) => AuthBloc()..add(InitialAuthEvent()),
  )
];
