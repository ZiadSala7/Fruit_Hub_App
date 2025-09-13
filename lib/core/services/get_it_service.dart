import 'package:get_it/get_it.dart';
import 'firebase_auth_service.dart';
import '../../features/auth/data/repos/auth_repo_implement.dart';
import '../../features/auth/presentation/cubit/register/register_cubit.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepoImplement>(
    AuthRepoImplement(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
  getIt.registerSingleton<RegisterCubit>(
    RegisterCubit(repo: getIt<AuthRepoImplement>()),
  );
}
