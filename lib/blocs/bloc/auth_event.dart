part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class InitialAuthEvent extends AuthEvent {
  @override
  String toString() => 'initialEvent';
}

class Logging extends AuthEvent {
  @override
  String toString() => 'initialEvent';
}

class LogOut extends AuthEvent {
  @override
  String toString() => 'initialEvent';
}

class ReloadUser extends AuthEvent {
  @override
  String toString() => 'initialEvent';
}
