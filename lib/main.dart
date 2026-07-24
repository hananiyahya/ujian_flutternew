// lib/main.dart — STATUS AKHIR HARI 2
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

// import 'screens/home_screen.dart';
import 'theme.dart';
import 'models/programme.dart';
import 'screens/programme_detail_screen.dart';
import 'screens/lab_hari4_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ms', null);
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
      home: const LabHari4Screen(),
      // home: const HomeScreen(),

      onGenerateRoute: (settings) {
          if (settings.name == '/detail') {
            final programme = settings.arguments as Programme;
            return MaterialPageRoute(
              builder: (_) => ProgrammeDetailScreen(programme: programme),
            );
          }
          return null;
       } // laluan tidak dikenali  // skrin kekal aplikasi
  );
  }
}
