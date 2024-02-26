import 'package:flutter/material.dart';
import 'package:telescope/pages/homecgpt.dart';
import 'package:telescope/pages/scheduler.dart';
import 'package:telescope/pages/LearningCorner.dart';
import 'package:telescope/pages/iss.dart';
import 'package:telescope/pages/login.dart';
import 'package:telescope/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/scheduler': (context) => const SchedulerPage(),
        '/learningCorner': (context) => const LearningCornerPage(),
        '/iss': (context) => MapScreen(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
      },
    );
  }
}
