import 'package:flutter/material.dart';
import 'package:prime_pronta_resposta/src/constants/app_colors.dart';
import 'package:prime_pronta_resposta/src/constants/app_text_styles.dart';

class AcceptedPage extends StatelessWidget {
  const AcceptedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Aceitos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: TextStyles.instance.primary,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.primaryColor.withAlpha((0.2 * 255).round()),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryColor.withAlpha(
                      (0.2 * 255).round(),
                    ),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                collapsedBackgroundColor: AppColors.thirdColor,
                backgroundColor: AppColors.thirdColor,
                title: Text(
                  'Detalhes do atendimento',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: TextStyles.instance.primary,
                    color: Colors.black45,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // <-- aqui
                        children: [
                          Text(
                            'Tipo de atendimento:',
                            style: TextStyle(
                              fontFamily: TextStyles.instance.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            'Local de ocorrência:',
                            style: TextStyle(
                              fontFamily: TextStyles.instance.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            'Mercadoria:',
                            style: TextStyle(
                              fontFamily: TextStyles.instance.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            'Transportadora:',
                            style: TextStyle(
                              fontFamily: TextStyles.instance.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            'Placa cavalo:',
                            style: TextStyle(
                              fontFamily: TextStyles.instance.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            'Placa carreta:',
                            style: TextStyle(
                              fontFamily: TextStyles.instance.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            'Cidade ocorrência:',
                            style: TextStyle(
                              fontFamily: TextStyles.instance.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            'UF ocorrência:',
                            style: TextStyle(
                              fontFamily: TextStyles.instance.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            'Endereço ocorrência:',
                            style: TextStyle(
                              fontFamily: TextStyles.instance.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            'Latitude/Longitude:',
                            style: TextStyle(
                              fontFamily: TextStyles.instance.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 10),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                collapsedBackgroundColor: AppColors.thirdColor,
                backgroundColor: AppColors.thirdColor,
                title: Text(
                  'Lista de atendimento',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: TextStyles.instance.primary,
                    color: Colors.black45,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Text(
                      'Nenhuma Lista de atendimento ainda!',
                      style: TextStyle(
                        fontFamily: TextStyles.instance.secondary,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
