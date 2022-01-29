import 'package:bmi_calculator/components/card_button.dart';
import 'package:bmi_calculator/components/type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreInfoPage extends StatelessWidget {
  final String title; // Titulo de cuadro de datos
  final String value; // Texto a aparece
  final TYPE type; // Indicador para carga de imagen
  final String? url;

  const MoreInfoPage(
      {Key? key,
      required this.title,
      required this.value,
      required this.type,
      this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReusableCard(
              background: kActiveCardColor,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      title,
                      style: kResultTextStyle,
                    ),
                    Text(
                      value,
                      textAlign: TextAlign.left,
                      style: kBodyTextStyle,
                    ),
                    if (url != null)
                      CardButton(
                        text: AppLocalizations.of(context)!.moreinfo,
                        onTap: () => launch(url.toString()),
                      ),
                    Image.asset(
                      'images/${type.toString().substring(5).toLowerCase()}.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            buttonTitle: AppLocalizations.of(context)!.back,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
