import 'package:flutter/material.dart';
import 'package:hnm_app/widgets/homepage.dart';

void main() {
  runApp(const HNM());
}

class HNM extends StatelessWidget {
  const HNM({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
