import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padding Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PaddingPage(),
    );
  }
}

class PaddingPage extends StatefulWidget {
  const PaddingPage({super.key});

  @override
  State<PaddingPage> createState() => _PaddingPageState();
}

class _PaddingPageState extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Padding',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              color: Colors.blue.shade100,
              child: const Text('Widget Tanpa Padding'),
            ),
            const SizedBox(height: 16.0),
            Material(
              color: Colors.orange.shade100,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Widget Dengan Padding'),
              ),
            ),
            const SizedBox(height: 16.0),
            Material(
              color: Colors.pink.shade100,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                child: Text('Widget Dengan Padding'),
              ),
            ),
            const SizedBox(height: 16.0),
            Material(
              color: Colors.red.shade100,
              child: const Padding(
                padding: EdgeInsets.only(
                    left: 32.0, right: 16.0, top: 16.0, bottom: 8.0),
                child: Text('Widget Dengan Padding'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
