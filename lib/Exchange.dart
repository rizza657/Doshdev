import 'package:flutter/material.dart';

class Exchange extends StatefulWidget {
  const Exchange({super.key});

  @override
  State<Exchange> createState() => _Exchange();
}

class _Exchange extends State<Exchange> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exchange"),
      ),
      body: const Center(
        child: Text('Home screen!'),
      ),
    );
  }
}