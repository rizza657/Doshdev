import 'package:flutter/material.dart';

class Customer_Service extends StatefulWidget {
  const Customer_Service({super.key});

  @override
  State<Customer_Service> createState() => _Customer_Service();
}

class _Customer_Service extends State<Customer_Service> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer_Service"),
      ),
      body: const Center(
        child: Text('Home screen!'),
      ),
    );
  }
}