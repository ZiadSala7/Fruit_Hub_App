import 'dart:developer';

import 'package:dartz/dartz.dart';
import '../models/user_model.dart';
import '../../../../core/errors/custom_exception.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/firebase_auth_service.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repos/auth_repo.dart';

class AuthRepoImplement extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImplement({required this.firebaseAuthService});
  // register by email and password with firebase
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPass({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.register: ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما. الرجاء المحاولة مرة اخرى.'));
    }
  }

  // login with email and password with firebase
  @override
  Future<Either<Failure, UserEntity>> loginWithEmailAndPass({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.login: ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما. الرجاء المحاولة مرة اخرى.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> loginWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure('Error login with google: $e'));
    } catch (e) {
      return left(ServerFailure('Error login with google: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> loginWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure('Error login with facebook: $e'));
    } catch (e) {
      return left(ServerFailure('Error login with facebook: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> loginWithApple() async {
    try {
      var user = await firebaseAuthService.signInWithApple();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure('Error login with apple: $e'));
    } catch (e) {
      return left(ServerFailure('Error login with apple: $e'));
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuthService.logOut();
  }
}
