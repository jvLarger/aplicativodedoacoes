import 'package:aplicativodedoacoes/pages/login/login_page.dart';
import 'package:aplicativodedoacoes/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apliativo de Doações',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
