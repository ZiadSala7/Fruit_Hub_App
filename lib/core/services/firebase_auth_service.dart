import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
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

  // google login
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

  //logout
  Future<void> logOut() async => FirebaseAuth.instance.signOut();
  // facebook login
  Future<User> signInWithFacebook() async {
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    final LoginResult loginResult = await FacebookAuth.instance.login(
      loginTracking: LoginTracking.limited,
      nonce: nonce,
    );
    // Create a credential from the access token
    OAuthCredential facebookAuthCredential;

    if (Platform.isIOS) {
      switch (loginResult.accessToken!.type) {
        case AccessTokenType.classic:
          final token = loginResult.accessToken as ClassicToken;
          facebookAuthCredential = FacebookAuthProvider.credential(
            token.authenticationToken!,
          );
          break;
        case AccessTokenType.limited:
          final token = loginResult.accessToken as LimitedToken;
          facebookAuthCredential = OAuthCredential(
            providerId: 'facebook.com',
            signInMethod: 'oauth',
            idToken: token.tokenString,
            rawNonce: rawNonce,
          );
          break;
      }
    } else {
      facebookAuthCredential = FacebookAuthProvider.credential(
        loginResult.accessToken!.tokenString,
      );
    }
    final signInWithCredential = await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);

    return signInWithCredential.user!;
  }

  /// Generates a cryptographically secure random nonce, to be included in a
  /// credential request.
  String generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = math.Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
