import 'package:flutter/material.dart';

void main() {
  runApp(const TabCounter());
}

class TabCounter extends StatelessWidget {
  const TabCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("Counter"),
        Text("24"),
      ],
    );
  }
}
