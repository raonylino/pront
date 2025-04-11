import 'package:flutter/material.dart';
import 'package:prime_pronta_resposta/src/constants/app_routers.dart';
import 'package:prime_pronta_resposta/src/view/accepted/accepted_page.dart';
import 'package:prime_pronta_resposta/src/view/dateOperation/date_operation_page.dart';
import 'package:prime_pronta_resposta/src/view/home/home_page.dart';
import 'package:prime_pronta_resposta/src/view/operation/operation_page.dart';
import 'package:prime_pronta_resposta/src/view/photoGallery/photo_gallery_page.dart';
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
        AppRouters.operationPage: (context) => const OperationPage(),
        AppRouters.dateOperationPage: (context) => const DateOperationPage(),
        AppRouters.galleryPhotoPage: (context) => const PhotoGalleryPage(),
      },
    );
  }
}
