import 'package:flutter/material.dart';

void main() {
  runApp(const TabCounter());
}

class TabCounter extends StatelessWidget {
  const TabCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<StatefulWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Counter", style: TextStyle(fontSize: 30.0, color: Colors.green)),
              Expanded(
                child: Center(
                  child: Text("$counter", style: const TextStyle(
                    fontSize: 60.0
                  ),),),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      shape: const CircleBorder(
                          side: BorderSide(width: 3.0, color: Colors.green)),
                      padding: const EdgeInsets.all(24.0)
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.green,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      shape: const CircleBorder(
                          side: BorderSide(width: 3.0, color: Colors.green)),
                      padding: const EdgeInsets.all(24.0)
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
