import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  late Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen - Yasmine'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                child: const Text('Rose Quartz'),
                onPressed: () {
                  color = Color.fromARGB(255, 241, 165, 173);
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
              child: const Text('Serenity'),
              onPressed: () {
                color = Color.fromARGB(250, 167, 195, 255);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Sage'),
              onPressed: () {
                color = Color.fromARGB(255, 118, 184, 97);
                Navigator.pop(context, color);
              },
            )
          ],
        ),
      ),
    );
  }
}