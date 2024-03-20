import 'package:flutter/material.dart';

class Join_Community extends StatefulWidget {
  const Join_Community({super.key});

  @override
  State<Join_Community> createState() => _Join_Community();
}

class _Join_Community extends State<Join_Community> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Join_Community"),
      ),
      body: const Center(
        child: Text('Home screen!'),
      ),
    );
  }
}