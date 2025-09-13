import 'package:firebase_auth/firebase_auth.dart';

import '../errors/custom_exception.dart';

CustomException registerThrowException(FirebaseAuthException e) {
  return CustomException(
    message: (e.code == 'weak-password')
        ? 'الرقم السري ضعيف جداً.'
        : (e.code == 'email-already-in-use')
        ? 'لقد قمت بالتسجيل مسبقاً. الرجاء تسجيل الدخول.'
        : (e.code == 'network-request-failed')
        ? 'تاكد من اتصالك بالانترنت.'
        : 'لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.',
  );
}
