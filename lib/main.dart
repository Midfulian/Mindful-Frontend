import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gr_project/Views/Pages/login_screen.dart';
import 'package:gr_project/Views/Pages/start_screen.dart';
import 'package:provider/provider.dart';
import 'Views/Pages/onBoarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'note_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seenOnboarding = prefs.getBool('seen_onboarding') ?? false;
  bool seenStartScreen = prefs.getBool('seen_start_screen') ?? false;
  Widget _defaultHome = seenOnboarding
      ? (seenStartScreen ? const LoginScreen() : const StartScreen())
      : const OnboardingScreen();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => NoteProvider(),
      child: MainApp(_defaultHome),
    ),
  );
}

class MainApp extends StatelessWidget {
  final Widget defaultHome;

  const MainApp(this.defaultHome, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: defaultHome,
    );
  }
}