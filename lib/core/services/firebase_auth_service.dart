import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tharwat_e_commerce/constants.dart';

import '../errors/custom_exception.dart';
import '../helper_functions/login_throw_exception.dart';
import '../helper_functions/register_throw_exception.dart';

class FirebaseAuthService {
  // register with email and password
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}",
      );
      throw registerThrowException(e);
    } catch (e) {
      log(
        "Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}",
      );

      throw CustomException(
        message: 'لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.',
      );
    }
  }

  // login with email and password
  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "Exception in FirebaseAuthService.login: ${e.toString()} and code is ${e.code}",
      );
      throw loginThrowException(e);
    } catch (e) {
      log("Exception in FirebaseAuthService.login: ${e.toString()}");

      throw CustomException(
        message: 'لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.',
      );
    }
  }

  // login with google account
  Future<User> signInWithGoogle() async {
    // get instance from google sign in
    final GoogleSignIn googleSignIn = GoogleSignIn.instance;
    // initialization for google sign in instance
    googleSignIn.initialize(serverClientId: serverClientId);
    log('2nd step : initialization');
    final GoogleSignInAccount googleUser = await googleSignIn.authenticate(
      scopeHint: googleUserScopeHints,
    );
    final GoogleSignInAuthorizationClient authClient =
        googleUser.authorizationClient;
    // to get idToken
    final GoogleSignInAuthentication googleAuth = googleUser.authentication;
    // to get access token
    final GoogleSignInClientAuthorization? clientAuth = await authClient
        .authorizationForScopes([
          'https://www.googleapis.com/auth/userinfo.profile',
        ]);

    final credential = GoogleAuthProvider.credential(
      accessToken: clientAuth!.accessToken,
      idToken: googleAuth.idToken,
    );

    var userCredential = await FirebaseAuth.instance.signInWithCredential(
      credential,
    );
    return userCredential.user!;
  }
}
