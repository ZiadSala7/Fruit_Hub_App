import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tharwat_e_commerce/firebase_options.dart';
import 'core/services/shared_preferences_singleton.dart';
import 'fruit_hub_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SharedPreferencesSingleton.initInstance();
  runApp(const FruitHubApp());
}
