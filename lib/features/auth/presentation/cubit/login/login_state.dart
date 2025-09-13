part of 'login_cubit.dart';

@immutable
abstract class LoginStates {}

class LoginInitial extends LoginStates {}

class LoginLoading extends LoginStates {}

class LoginSuccess extends LoginStates {
  final UserEntity user;

  LoginSuccess({required this.user});
}

class LoginFailure extends LoginStates {
  final String message;

  LoginFailure({required this.message});
}
