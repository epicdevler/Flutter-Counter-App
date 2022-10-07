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
              const Text("Counter"),
              Expanded(
                child: Center(child: Text("${counter}")),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(side: BorderSide(color: Colors.orange, width: 2.0),),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    padding: const EdgeInsets.all(24.0),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.orange,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(side: BorderSide(color: Colors.orange, width: 2.0),),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    padding: const EdgeInsets.all(24.0),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.orange,
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
