import 'package:flutter/material.dart';

class Counter extends StatefulWidget{
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: const TextStyle(
                fontSize: 150,
                fontWeight: FontWeight.w100,
              ),
            ),
            const Text(
              'Clicks',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
