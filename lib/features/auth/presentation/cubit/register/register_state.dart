part of 'register_cubit.dart';

@immutable
abstract class RegisterStates {}

class RegisterInitial extends RegisterStates {}

class RegisterLoading extends RegisterStates {}

class RegisterSuccess extends RegisterStates {
  final UserEntity user;

  RegisterSuccess({required this.user});
}

class RegisterFailure extends RegisterStates {
  final String message;

  RegisterFailure({required this.message});
}
