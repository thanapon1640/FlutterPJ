import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:presentuxui/firebase_options.dart';
import 'package:presentuxui/pages/Page_test.dart';
import 'package:presentuxui/pages/home_page.dart';
import 'package:presentuxui/pages/login_page.dart';
import 'package:presentuxui/pages/splash_page.dart';


Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
