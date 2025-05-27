import 'package:ecom_admin/app.dart';
import 'package:ecom_admin/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart' show usePathUrlStrategy;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Routing-strategy
  usePathUrlStrategy();

  // Firebase-related
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const App());
}