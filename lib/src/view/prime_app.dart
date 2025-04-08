import 'package:flutter/material.dart';
import 'package:prime_pronta_resposta/src/constants/app_colors.dart';
import 'package:prime_pronta_resposta/src/constants/app_routers.dart';
import 'package:prime_pronta_resposta/src/view/accepted/accepted_page.dart';
import 'package:prime_pronta_resposta/src/view/home/home_page.dart';
import 'package:prime_pronta_resposta/src/view/splash/splash_page.dart';

class PrimeApp extends StatelessWidget {
  const PrimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prime App',
      theme: ThemeData(primarySwatch: Colors.blueGrey, useMaterial3: true),
      routes: {
        AppRouters.homePage: (context) => const HomePage(),
        AppRouters.splashPage: (context) => const SplashPage(),
        AppRouters.acceptedPage: (context) => const AcceptedPage(),
      },
    );
  }
}
