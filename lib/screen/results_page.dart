import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String diet;
  final String exercise;

  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation,
      required this.diet,
      required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      AppLocalizations.of(context)!.resultTitle,
                      style: kTitleTextStyle,
                    ),
                  ),
                  ReusableCard(
                    background: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          resultText.toUpperCase(),
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmiResult,
                          style: kBMITextStyle,
                        ),
                        Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      AppLocalizations.of(context)!.recommendationsTitle,
                      style: kBodyTextStyle,
                    ),
                  ),
                  ReusableCard(
                    background: kActiveCardColor,
                    child: Column(
                      children: [
                        Text(
                          diet,
                          textAlign: TextAlign.left,
                          style: kBodyTextStyle,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          exercise,
                          textAlign: TextAlign.left,
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: AppLocalizations.of(context)!.bottomButton,
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
