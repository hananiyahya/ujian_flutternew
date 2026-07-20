import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const MyHomePage(title: 'Monday'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('eTT Mobile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Kotak biru
            Container(
  margin: const EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 8,
  ),
  padding: const EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(14),
    border: Border.all(
      color: Colors.grey.shade300,
    ),
  ),
  child: const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '🇪🇬 Universiti Al-Azhar',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1A2B5C),
        ),
      ),

      SizedBox(height: 4),

      Text(
        'Kaherah (Cairo), Mesir',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),

      SizedBox(height: 12),

      Text('Bidang: Perubatan (Medicine)'),

      SizedBox(height: 4),

      Text('Anggaran yuran: RM23,000/tahun (ilustrasi)'),

      SizedBox(height: 4),

      Text('Kuota (ilustrasi): 40 tempat · Pengambilan: September'),
    ],
  ),
),

const SizedBox(height: 20),


            const Text(
              'You have pushed the button this many times:',
            ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: 20),

            const Text(
              'Selamat datang!',
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            const Text(
              'Universiti Al-Azhar',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Icon(
              Icons.school,
              size: 40,
              color: Color(0xFF1A2B5C),
            ),

            const SizedBox(height: 10),

            const Icon(
              Icons.flag,
              size: 40,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
