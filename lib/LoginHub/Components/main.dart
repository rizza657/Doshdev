import 'package:flutter/material.dart';
import 'package:joshdev007/LoginHub/login_page.dart'; // Import LoginPage here

void main() {
  runApp(const HomepageApp());
}

class HomepageApp extends StatelessWidget {
  const HomepageApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: const LoginPage(), // Set LoginPage as the initial route
    );
  }
}
