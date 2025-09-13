import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/services/custom_bloc_observer.dart';
import 'core/services/get_it_service.dart';
import 'firebase_options.dart';
import 'core/services/shared_preferences_singleton.dart';
import 'fruit_hub_app.dart';

void main() async {
  setUpGetIt();
  Bloc.observer = CustomBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SharedPreferencesSingleton.initInstance();
  runApp(const FruitHubApp());
}
