import 'package:flutter/material.dart';
import 'core/services/shared_preferences_singleton.dart';
import 'fruit_hub_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesSingleton.initInstance();
  runApp(const FruitHubApp());
}
