import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MyApp());
}

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo')),
        body: const Scaffold(
          body: GradientContainer(
            Color.fromARGB(255, 33, 5, 109),
            Color.fromARGB(255, 68, 21, 149),
          ),
        ),
      ),
    );
  }
}
