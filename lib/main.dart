import 'package:flutter/material.dart';
import 'package:prime_pronta_resposta/src/view/home/home_page.dart';
import 'package:prime_pronta_resposta/src/view/prime_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const PrimeApp();
  }
}
