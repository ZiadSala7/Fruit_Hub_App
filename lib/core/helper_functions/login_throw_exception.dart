import 'package:firebase_auth/firebase_auth.dart';

import '../errors/custom_exception.dart';

CustomException loginThrowException(FirebaseAuthException e) {
  return CustomException(
    message: (e.code == 'user-not-found')
        ? 'الرقم السري او البريد الالكتروني غير صحيح.'
        : (e.code == 'wrong-password')
        ? 'الرقم السري او البريد الالكتروني غير صحيح.'
        : (e.code == 'invalid-credential')
        ? 'الرقم السري او البريد الالكتروني غير صحيح.'
        : (e.code == 'network-request-failed')
        ? 'تاكد من اتصالك بالانترنت.'
        : 'لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.',
  );
}
