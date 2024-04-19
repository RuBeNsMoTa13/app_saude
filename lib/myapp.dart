import 'package:app_saude/loadingpage.dart';
import 'package:app_saude/loginpage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Saúde',
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}
