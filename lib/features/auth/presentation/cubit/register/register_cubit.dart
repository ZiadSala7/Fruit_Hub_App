import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../domain/entities/user_entity.dart';

import '../../../data/repos/auth_repo_implement.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  final AuthRepoImplement repo;
  RegisterCubit({required this.repo}) : super(RegisterInitial());

  bool areTermsAccepted = false;
  Future<void> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(RegisterLoading());
    var response = await repo.createUserWithEmailAndPass(
      name: name,
      email: email,
      password: password,
    );
    
    response.fold(
      (failure) => emit(RegisterFailure(message: failure.message)),
      (userEntity) => emit(RegisterSuccess(user: userEntity)),
    );
  }
}
