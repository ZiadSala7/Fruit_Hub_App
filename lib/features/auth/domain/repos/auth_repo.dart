import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPass({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<Failure, UserEntity>> loginWithEmailAndPass({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> loginWithGoogle();

  Future<Either<Failure, UserEntity>> loginWithFacebook();
  Future<Either<Failure, UserEntity>> loginWithApple();
  Future<void> signOut();
}
