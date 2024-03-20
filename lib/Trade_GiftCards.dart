import 'package:flutter/material.dart';

class Trade_GiftCards extends StatefulWidget {
  const Trade_GiftCards({super.key});

  @override
  State<Trade_GiftCards> createState() => _Trade_GiftCards();
}

class _Trade_GiftCards extends State<Trade_GiftCards> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trade_GiftCards"),
      ),
      body: const Center(
        child: Text('Home screen!'),
      ),
    );
  }
}