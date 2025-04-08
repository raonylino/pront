import 'package:flutter/material.dart';
import 'package:prime_pronta_resposta/src/constants/app_colors.dart';
import 'package:prime_pronta_resposta/src/constants/app_routers.dart';
import 'package:prime_pronta_resposta/src/constants/app_text_styles.dart';

class DateOperationPage extends StatelessWidget {
  const DateOperationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data da Operação',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontFamily: TextStyles.instance.primary,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        actionsIconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popAndPushNamed(AppRouters.homePage);
          },
        ),
      ),
      body: Container(),
    );
  }
}
