import 'package:flutter/material.dart';
import 'package:pinterest/screen/main_screen.dart';

void main() {
  runApp(const Pinterest());
}
class Pinterest extends StatelessWidget {
  const Pinterest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true
      ),
      home: const MainScreen(),
    );
  }
}

