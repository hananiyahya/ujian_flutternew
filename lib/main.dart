// lib/main.dart — STATUS AKHIR HARI 2
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'theme.dart';

void main() {
  runApp(const EttMobileApp());
}

class EttMobileApp extends StatelessWidget {
  const EttMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eTT Mobile',
      debugShowCheckedModeBanner: false,
      theme: KptTheme.light,      // tema navy + emas
      home: const HomeScreen(),   // skrin kekal aplikasi
    );
  }
}
