import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/repos/auth_repo_implement.dart';
import '../../../domain/entities/user_entity.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  final AuthRepoImplement repo;
  LoginCubit({required this.repo}) : super(LoginInitial());

  Future<void> loginWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    var response = await repo.loginWithEmailAndPass(
      email: email,
      password: password,
    );

    response.fold(
      (failure) => emit(LoginFailure(message: failure.message)),
      (userEntity) => emit(LoginSuccess(user: userEntity)),
    );
  }
}
