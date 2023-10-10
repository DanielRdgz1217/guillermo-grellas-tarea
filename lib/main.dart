import 'package:flutter/material.dart';
import 'presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MayApp());
}

class MayApp extends StatelessWidget {
  const MayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const Counter(),
    );
  }
}
