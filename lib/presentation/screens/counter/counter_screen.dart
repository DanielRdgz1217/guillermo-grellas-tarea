import 'package:flutter/material.dart';
import '../../components/custom_button.dart';

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
      appBar: AppBar(
        title: const Center(child: Text('Counter'))
      ),
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
            Text(
              count > 1 ? 'Clicks' : 'Click',
              //'Click${count > 1 ? 's' : ''}',
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            icon: Icons.plus_one,
          ),
          const SizedBox(height: 10),
          CustomButton(
            onPressed: () {
              setState(() {
                if(count > 0) {
                  count--;
                }
              });
            },
            icon: Icons.exposure_minus_1,
          ),
          const SizedBox(height: 10),
          CustomButton(
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            icon: Icons.refresh_rounded,
          ),
        ]
      ),
    ); 
  }
}
