import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
    final GoogleSignIn googleSignIn = GoogleSignIn.instance;
    log('1st step : make instance');
    googleSignIn.initialize(
      serverClientId:
          "626391545557-kap9sok5n82s2btgl2em3pujj75o7897.apps.googleusercontent.com",
    );
    log('2nd step : initialization');
    final GoogleSignInAccount googleUser = await googleSignIn.authenticate(
      scopeHint: [
        'email',
        'https://www.googleapis.com/auth/userinfo.profile',
        'https://www.googleapis.com/auth/drive.readonly',
        'https://www.googleapis.com/auth/calendar',
      ],
    );
    log('3rd step : google user');
    // to get accessToken
    final GoogleSignInAuthorizationClient authClient =
        googleUser.authorizationClient;
    log('4th step : auth client');
    // to get idToken
    final GoogleSignInAuthentication googleAuth = googleUser.authentication;
    log('5th step : google auth');

    final GoogleSignInClientAuthorization? clientAuth = await authClient
        .authorizationForScopes([
          'https://www.googleapis.com/auth/userinfo.profile',
        ]);
    log('6th step : client auth');

    log("AccessToken: $googleAuth.idToken");
    log("AccessToken: $googleAuth.access");
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
