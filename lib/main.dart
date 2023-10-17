import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/constants.dart';
import 'package:fitness/screens/splashPage.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //use for remove banner of debug on appbar
      title: 'FitneesSL',
      theme: ThemeData(
        primaryColor: darkBlue,
        secondaryHeaderColor: darkBlue,
        scaffoldBackgroundColor: darkBlue,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: white),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
    );
  }
}
