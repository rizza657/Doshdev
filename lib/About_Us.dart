import 'package:flutter/material.dart';

class About_Us extends StatefulWidget {
  const About_Us({super.key});

  @override
  State<About_Us> createState() => _About_Us();
}

class _About_Us extends State<About_Us> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About_Us"),
      ),
      body: const Center(
        child: Text('Home screen!'),
      ),
    );
  }
}