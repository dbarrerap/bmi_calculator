import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/card_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/type.dart';
import 'package:bmi_calculator/screen/water_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String diet;
  final String exercise;
  final String water;

  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation,
      required this.diet,
      required this.exercise,
      required this.water});

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
                  CardButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MoreInfoPage(
                            title: AppLocalizations.of(context)!.diet,
                            value: diet,
                            type: TYPE.DIET,
                            url: getDietUrl(double.parse(bmiResult), context),
                          ),
                        ),
                      );
                    },
                    text: AppLocalizations.of(context)!.diet,
                  ),
                  CardButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MoreInfoPage(
                            title: AppLocalizations.of(context)!.exercise,
                            value: exercise,
                            type: TYPE.EXERCISE,
                          ),
                        ),
                      );
                    },
                    text: AppLocalizations.of(context)!.exercise,
                  ),
                  CardButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MoreInfoPage(
                            title: AppLocalizations.of(context)!.water,
                            value: water,
                            type: TYPE.WATER,
                          ),
                        ),
                      );
                    },
                    text: AppLocalizations.of(context)!.water,
                  ),
                ],
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

  getDietUrl(double bmi, BuildContext context) {
    if (Localizations.localeOf(context).toString() == 'es') {
      // Links en español
      if (bmi >= 30) {
        return 'https://food.ndtv.com/food-drinks/obesity-diet-what-to-eat-and-avoid-to-manage-obesity-1815463';
      } else if (bmi >= 25) {
        return 'https://www.ucsfhealth.org/education/guidelines-for-a-low-cholesterol-low-saturated-fat-diet';
      } else if (bmi >= 18.5) {
        return 'https://www.who.int/news-room/fact-sheets/detail/healthy-diet';
      } else {
        return 'https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/expert-answers/underweight/faq-20058429';
      }
    }
    if (bmi >= 30) {
      return 'https://food.ndtv.com/food-drinks/obesity-diet-what-to-eat-and-avoid-to-manage-obesity-1815463';
    } else if (bmi >= 25) {
      return 'https://www.ucsfhealth.org/education/guidelines-for-a-low-cholesterol-low-saturated-fat-diet';
    } else if (bmi >= 18.5) {
      return 'https://www.who.int/news-room/fact-sheets/detail/healthy-diet';
    } else {
      return 'https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/expert-answers/underweight/faq-20058429';
    }
  }
}
