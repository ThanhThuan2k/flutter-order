import 'package:flutter/material.dart';
import 'package:flutter_order/views/login/login.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LoginView(),
      ),
    );
  }
}